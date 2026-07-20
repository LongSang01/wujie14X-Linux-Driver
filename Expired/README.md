### 2026-02-06

**`KDE`更新`ddcutil 2.2.5`版本后导致进入桌面卡死，结合刚安装时的花屏问题，推荐禁用`PSR`**

`/boot/loader/entries/*.conf`

```bash
options ... amdgpu.dcdebugmask=0x10
```

### 2026-04-09

通过 `ACPI` 直接管理电池模式和键盘背光  
添加了个小脚本实现自动化调整

### 2026-04-27

实测电池充电模式切换似乎并未生效  
根据官网的描述，[可以通过确认电池电流是否为0判断](https://www.tuxedocomputers.com/en/Battery-charging-profiles-inside-the-TUXEDO-Control-Center.tuxedo)  
但是实测电流会在充电到设置值时瞬间跳`0`然后继续充电直至充满  
情况与该 [issues](https://github.com/tuxedocomputers/tuxedo-control-center/issues/268#issuecomment-4193693266) 评论相同

### 2026-04-28

二次测试电池模式是否生效  
详见[日志](/battery_log-260428/README.md)  
**基本可以确认`电池模式切换`在`linux`没有正常工作**

### 2026-07-02

参照该[评论](https://github.com/tuxedocomputers/tuxedo-control-center/issues/268#issuecomment-4417676075)  
通过修改`0x7b9`重新测试

详见[日志](/battery_log-260702/README.md)  
**电池充电上限看起来还是不可用(悲)**

### 通过`sysfs`管理（电池模式已确认不可工作，仅演示）

不使用控制面板的话可直接通过`sysfs`接口调整
分别对应电池模式的100%，~90%，~80%

```bash
cat /sys/devices/platform/tuxedo_keyboard/charging_profile/charging_profile

# 100%
echo high_capacity | sudo tee /sys/devices/platform/tuxedo_keyboard/charging_profile/charging_profile

# ~90%
echo balanced | sudo tee /sys/devices/platform/tuxedo_keyboard/charging_profile/charging_profile

# ~80%
echo stationary | sudo tee /sys/devices/platform/tuxedo_keyboard/charging_profile/charging_profile
```

### 通过`ACPI`直接管理（电池模式已确认不可工作，仅演示）

通过对 [tuxedo-drivers](https://github.com/tuxedocomputers/tuxedo-drivers/blob/cd9e534c13ffe79641b75abdfc542a87e238a98c/src/uniwill_keyboard.h#L1949) 源码的分析及实机测试  
开启`manual mode`后即可通过`acpi`直接管理电池模式

手动管理 (`0x8`,`0x18`,`0x28`分别对应100%,~90%,~80%)  
调整需要使用(`0x08`,`0x18`,`0x28`)

```bash
# 查看当前电池模式
echo '\_SB.INOU.ECRR 0x7a6' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call

# 需开启手动模式后才可以调整电池模式
echo '\_SB.INOU.ECRW 0x741 0x81' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call

# 调整电池模式为 100%
echo '\_SB.INOU.ECRW 0x7a6 0x08' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call

# 调整电池模式为 ~90%
echo '\_SB.INOU.ECRW 0x7a6 0x18' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call

# 调整电池模式为 ~80%
echo '\_SB.INOU.ECRW 0x7a6 0x28' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call
```

键盘背光也可通过`acpi`调整，但是为什么不直接用`fn+f6`呢

```bash
# 查看当前背光设置
echo '\_SB.INOU.ECRR 0x78c' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call

# 开启键盘背光
echo '\_SB.INOU.ECRW 0x78c 0x1' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call

# 关闭键盘背光
echo '\_SB.INOU.ECRW 0x78c 0x3' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call
```

## 有线网卡驱动（已集成至7.0内核）

旧版本可使用aur内的包

```bash
yay -S tuxedo-yt6801-dkms-git
```

二次插拔网线挂起没反应  
https://gitlab.com/tuxedocomputers/development/packages/tuxedo-yt6801/-/issues/27

可通过重加载模块修复，最新版本仍未修复该Bug(2026.07.02更新：自4月后未测试)

```bash
sudo modprobe -r yt6801 && sudo modprobe yt6801
```
