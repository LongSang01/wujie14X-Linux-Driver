## 概述

无界 14X 基于同方的主板, 可以用 `TUXEDO` 的驱动来让大部分功能正常 work  
比如电池充电上限控制,风扇控制, 不过也有些小问题, 基本都是`TDP`相关(不装控制中心除了电池充电上限基本都正常工作, 所以请参考自己的使用情况, 控制中心对我的作用就是防止电池快速挂掉)

1. `fn+x`热键会被`tuxedo`的控制面板拦截, 变成打开控制中心, 导致切换`TDP`(电源模式)失败
2. tuxedo 控制中心无法更改`TDP`, cpu`TDP`锁死默认 `45w`，切换`bios`内的电源模式也无效

不过`8845HS/8745HS`这颗U也就这样了, 切到`65w`原装电源适配器也顶不住,烫的要死, 应该也没人用集显打游戏吧 `?`，玩玩 CS2 这种可以用`gamemode`, `gamescope`, 实测可以让帧数更稳定且更高, 就是热热热热

## !!!警告(必看)

### 2025-12-23

**近几月内发现`tuxedo-control`的`CPU控制`功能，经常导致黑屏重启；电源管理和`power-profiles-daemon`冲突，经常导致系统挂起，暂已弃用**

### 2026-02-06

**`KDE`更新`ddcutil 2.2.5`版本后导致进入桌面卡死，结合刚安装时的花屏问题，推荐禁用`PSR`**

`/boot/loader/entries/*.conf`

```bash
options ... amdgpu.dcdebugmask=0x10
```

### 2026-03-16

将仓库内的driver版本至最新版本，后续不再更新`tuxedo-drivers`

已将电源管理改用`tuned`, 为使其兼容`KDE`的图形化电源管理, 需启用兼容层 [`tuned-ppd`](https://wiki.archlinux.org.cn/title/CPU_frequency_scaling#tuned)

```bash
sudo systemctl enable tuned tuned-ppd
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

也可使用`aur`的包

```bash
yay -S yt6801-dkms
```

二次插拔网线挂起没反应  
https://gitlab.com/tuxedocomputers/development/packages/tuxedo-yt6801/-/issues/27

可通过重加载模块修复，最新版本仍未修复该Bug

```bash
sudo modprobe -r yt6801 && sudo modprobe yt6801
```
