## 概述
    
无界 14X 基于同方的主板, 可以用 `TUXEDO` 的驱动来让大部分功能正常 work  
比如电池充电上限控制,风扇控制, 不过也有些小问题, 基本都是`TDP`相关(不装控制中心除了电池充电上限基本都正常工作, 所以请参考自己的使用情况, 控制中心对我的作用就是防止电池快速挂掉)

1. `fn+x`热键会被 tuxedo 的控制面板拦截, 变成打开控制中心, 导致切换`TDP`(电源模式)失败
2. tuxedo 控制中心无法更改`TDP`, cpu TDP 锁死默认 45w，切换`bios`内的电源模式也无效

不过 8845HS/8745HS 这颗 U 也就这样了, 切到 65w 原装电源适配器也顶不住,烫的要死, 应该也没人用集显打游戏吧 `?`，玩玩 CS2 这种可以用`gamemode`, `gamescope`, 实测可以让帧数更稳定且更高, 就是热热热热

## !!!警告(必看)
### 2025-12-23
**近几月内发现`tuxedo-control`的`CPU控制`功能，经常导致黑屏重启；电源管理和`power-profiles-daemon`冲突，经常导致系统挂起，暂已弃用**

### 2026-02-06
**`KDE`更新`ddcutil 2.2.5`版本后导致进入桌面卡死，结合刚安装时的花屏问题，推荐禁用`PSR`**
`/boot/loader/entries/*.conf`
```bash
options ... amdgpu.dcdebugmask=0x10
```

## 控制中心

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

## 有线网卡驱动

构建包魔改自 [PKGBUILD](https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=tuxedo-yt6801-dkms-git)  
仓库内为 [tuxedo-yt6801](https://gitlab.com/tuxedocomputers/development/packages/tuxedo-yt6801)

```bash
cd tuxedo-yt6801/
makepkg -si
```

2025.08.22 更新  
tuxedo 的驱动也支持 6.16 了

碰到内核版本更新 dkms 报错可以试试 aur 的包

```bash
yay -S yt6801-dkms
```

2026.01.16 更新  
yt6801网卡二次插拔网线挂起没反应  
https://gitlab.com/tuxedocomputers/development/packages/tuxedo-yt6801/-/issues/27  
上游未修复，暂时只能通过重加载驱动解决
```bash
sudo modprobe -r yt6801 && sudo modprobe yt6801
```
