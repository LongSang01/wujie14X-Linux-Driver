## 概述

无界 14X 基于同方的主板, 可以用 `TUXEDO` 的驱动来让大部分功能正常 work  
比如电池充电上限控制,风扇控制, 不过也有些小问题, 基本都是`TDP`相关

1. `fn+x`热键会被`tuxedo`的控制面板拦截, 变成打开控制中心, 导致切换`TDP`(电源模式)失败
2. tuxedo 控制中心无法更改`TDP`, cpu`TDP`锁死默认 `45w`，切换`bios`内的电源模式也无效

不过`8845HS/8745HS`这颗U也就这样了, 切到`65w`原装电源适配器也顶不住,烫的要死, 应该也没人用集显打游戏吧 `?`

**新增了一个通过`acpi_call`的实现的简易控制中心**

目前已实现调整3档TDP(`25w/45w/65w`)，3档键盘灯，获取电池信息，修改电池充电模式(不可用)，**百分比电池充电上限(现在终于可用了!)**

## !!!警告(必看)

**如果使用新版本控制中心设置了电池充电上限，请务必偶尔让电池完整循环一次，否则可能导致容量异常下降，电池损坏等问题，锂电池的工作原理就是这样**

### 2026-03-16

将仓库内的driver版本至最新版本，后续不再更新`tuxedo-drivers`

已将电源管理改用`tuned`, 为使其兼容`KDE`的图形化电源管理, 需启用兼容层 [`tuned-ppd`](https://wiki.archlinux.org.cn/title/CPU_frequency_scaling#tuned)

```bash
sudo systemctl enable tuned tuned-ppd
```

### 2026-07-08

根据[逆向的代码](https://gist.github.com/w568w/b2fc5f9d1f4dff13efe751abec27b396?permalink_comment_id=6238746#gistcomment-6238746)重新制作了一版控制中心

### 2026-07-15

参照[w568w的新文章](https://gist.github.com/w568w/957976b59906e0ce5d6c13ad342e1593)重新修改控制中心  
现在电池充电百分比上限可用了！

### 2026-07-17

将一些已经过期或者不可用的说明迁移到 [Expired](Expired) 文件夹下

新增刷写[BIOS+EC说明](<Flash_BIOS(高风险).md>)，请勿随意尝试

## Tuxedo控制中心

构建包魔改自 [PKGBUILD](https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=tuxedo-drivers-nocompatcheck-dkms)  
补丁魔改自 [patches](https://github.com/sund3RRR/mechrevo14X-linux/tree/master/patches)

没改名称是因为不想再改`tuxedo-control-center-bin`的依赖了,实际 patch 只支持`MECHREVO`

```bash
cd tuxedo-drivers-nocompatcheck-dkms/
makepkg -si
```

安装控制面板

```bash
yay -S tuxedo-control-center-bin
```

## 通过`ACPI`直接管理

感谢 [w568w](https://gist.github.com/w568w/b2fc5f9d1f4dff13efe751abec27b396) 的逆向工程

安装`acpi_call`

```bash
sudo pacman -S acpi_call
```

随手写了个脚本自动化，具体使用方法可查看代码内的`help`

```
go build ./wujie14xCC.go
sudo mv wujie14xCC /usr/local/bin/
```

`/etc/systemd/system/wujie14xCC.service `

```bash
[Unit]
Description=Wujie 14X CC
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/wujie14xCC -limit-up 80 -kbd-level 0
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```

### 充电限制原理

机械革命的`EC`默认将`limit_enabled`设置为`False`，导致充电限制永远不会生效  
`limit_enabled`不在`EC可写`的范围内，所以我们永远无法修复这个问题

[w568w](https://gist.github.com/w568w/957976b59906e0ce5d6c13ad342e1593#2-the-solution-is-obvious)发现了`EC`的同步逻辑  
可以通过将状态值`0x07C3`覆写为`0x04`，使`limit_enabled`变为`true`  
等待`EC`下一个`同步周期`，`EC`自动执行`store_limit()`  
这样`0x07B9`的充电限制就可以生效了
