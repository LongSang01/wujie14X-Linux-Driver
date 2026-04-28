# 机械革命 无界14x暴风雪 ArchLinux下的充电记录

为了验证通过`EC`切换电池模式是否生效，我记录了电池从`56%`充到`100%`的全过程

**`BIOS`版本为`N.1.14MRO19`**  
使用`机械革命控制中心`确认为`最新版本`，详见该[评论](https://gist.github.com/w568w/b2fc5f9d1f4dff13efe751abec27b396?permalink_comment_id=6122281#gistcomment-6122281)

首先通过`acpi_call`切换并确认为`工作站模式`

```bash
[nihao@01-Arch ~/Desktop]$ echo '\_SB.INOU.ECRR 0x7a6' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call

\_SB.INOU.ECRR 0x7a6
0x28%
```

在`2026-04-28 13:37:09`插入电源适配器开始充电  
在`2026-04-28 14:40:35`电池充满

**在我之前的测试中，每次通过EC切换电池充电模式时`/sys/class/power_supply/BAT0/current_now`的值都会瞬间变为`0`，但是在本次测试时未成功复现，只有在插入电源的瞬间`current_now`变为`0`**

在电池充满后，将电池模式切换到`长续航模式`

```bash
[nihao@01-Arch ~]$ echo '\_SB.INOU.ECRW 0x7a6 0x08' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call

\_SB.INOU.ECRW 0x7a6 0x08
0xfffffffe%
```

如果电池模式正常工作，切换到`长续航模式`时电池应该继续充电，电流变高，但是实际上`current_now`没有任何变化

为了防止占用篇幅，我将`脚本`和`log`都上传到了仓库内

通过以下脚本进行记录  
[battery_log.py](./battery_log.py)

以下为详细的日志  
[battery_log.csv](./battery_log.csv)

根据`tuxedo`的[官方文档](https://www.tuxedocomputers.com/en/Battery-charging-profiles-inside-the-TUXEDO-Control-Center.tuxedo)，可以通过`current_now`是否为`0`判断电池是否在充电，但是在我的设备上，只有切换电池模式的几秒和插入电源适配器的几秒内`current_now`会变为`0`

**基于以上的日志，我认为电池模式切换在Linux平台没有正常生效**

作为参考，以下为我的`BIOS`内显示的电池信息

| Battery Information        |                          |
| -------------------------- | ------------------------ |
| Battery Manufacturing Date | 2024/09/09               |
| Battery Voltage            | 16349 mV                 |
| Battery Current            | +0mA                     |
| Battery Temperautre        | 32                       |
| Battery Capacity           | 100%(4300 mAh / 4300mAh) |
