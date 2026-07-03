# 机械革命 无界14x暴风雪 0x7b9充电测试

基于[@tuncenator](https://github.com/tuncenator)的[测试](https://github.com/tuxedocomputers/tuxedo-control-center/issues/268#issuecomment-4417676075)及[结论](https://github.com/tuxedocomputers/tuxedo-control-center/issues/268#issuecomment-4492964465)重新进行测试

`DSDT`确定和评论同款，**`BIOS`版本为`N.1.14MRO50`**

```bash
[nihao@01-Arch ~/Downloads]$ sudo dmidecode -s bios-version
N.1.14MRO50

[nihao@01-Arch ~/Downloads]$ sudo acpidump -b
iasl -d dsdt.dat
grep -nE 'CGLM|ECMG|7B9' dsdt.dsl

Intel ACPI Component Architecture
ASL+ Optimizing Compiler/Disassembler version 20251212
Copyright (c) 2000 - 2025 Intel Corporation

File appears to be binary: found 18737 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file dsdt.dat, Length 0xFB73 (64371) bytes
ACPI: DSDT 0x0000000000000000 00FB73 (v02 ALASKA A M I    01072009 INTL 20200717)
Pass 1 parse of [DSDT]
Pass 2 parse of [DSDT]
Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)

Parsing completed
Disassembly completed
ASL Output:    dsdt.dsl - 381153 bytes
7605:            OperationRegion (ECMG, SystemMemory, 0xFED50000, 0x1000)
7606:            Field (ECMG, AnyAcc, NoLock, Preserve)
7678:                Offset (0x7B9),
7679:                CGLM,   7,
8628:                    If (((^^PCI0.SBRG.EC0.CGLM <= 0x63) && (^^PCI0.SBRG.EC0.CGLM >= One)))
```

本次测试先将电池的电量消耗到`69%`，通过修改`0x7b9`的值为`80%`进行验证，为防止冲突，切换电池模式为`0x8`长续航模式

```bash
[nihao@01-Arch ~]$ echo '\_SB.INOU.ECRR 0x7a6' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call
\_SB.INOU.ECRR 0x7a6
0x8%

nihao@01-Arch ~]$ echo '\_SB.INOU.ECRR 0x7b9' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call
\_SB.INOU.ECRR 0x7b9
0x0%

[nihao@01-Arch ~]$ echo '\_SB.INOU.ECRW 0x7b9 0x50' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call
\_SB.INOU.ECRW 0x7b9 0x50
0xfffffffe%

[nihao@01-Arch ~]$ echo '\_SB.INOU.ECRR 0x7b9' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call
\_SB.INOU.ECRR 0x7b9
0x50%
```

通过以下脚本进行记录  
[battery_log.py](/battery_log-260428/battery_log.py)

以下为详细的日志  
[battery_log.csv](./battery_log.csv)

**好吧看起来充电限制还是没有生效(悲)**

作为参考，以下是我的`upower`回显

```
[nihao@01-Arch ~]$ echo '\_SB.INOU.ECRR 0x7a6' | sudo tee /proc/acpi/call && sudo cat /proc/acpi/call
\_SB.INOU.ECRR 0x7a6
0x8%

[nihao@01-Arch ~]$ upower -i $(upower -e | grep BAT)

  native-path:          BAT0
  vendor:               OEM
  model:                standard
  serial:               00001
  power supply:         yes
  updated:              2026年07月02日 星期四 13时04分08秒 (28 seconds ago)
  has history:          yes
  has statistics:       yes
  battery
    present:             yes
    rechargeable:        yes
    state:               fully-charged
    warning-level:       none
    energy:              80.08 Wh
    energy-empty:        0 Wh
    energy-full:         80.08 Wh
    energy-full-design:  80.08 Wh
    voltage-min-design:  15.4 V
    capacity-level:      Normal
    energy-rate:         0 W
    voltage:             16.326 V
    charge-cycles:       N/A
    percentage:          100%
    capacity:            100%
    technology:          lithium-ion
    icon-name:          'battery-full-charged-symbolic'
  History (voltage):
    1782968648  16.326  fully-charged
```

通过以下方式提取dsdt并上传到仓库内，如果这对某些人的工作有帮助那就更好了

```
sudo acpidump -b
iasl -d dsdt.dat
```
