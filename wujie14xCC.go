package main

import (
	"flag"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const (
	acpiReadMethod  = "\\_SB.INOU.ECRR"
	acpiWriteMethod = "\\_SB.INOU.ECRW"

	ECAddrBatteryMode     = 0x07A6 // 充电模式控制寄存器，bit4/bit5 决定充电截止百分比 (100/90/80)
	ECAddrChargeLimitUp   = 0x07B9 // 充电上限百分比寄存器，bit6~bit0 存储上限值 (0 表示默认 100%)
	ECAddrChargeLimitDown = 0x07D0 // 充电下限/起充百分比寄存器，bit6~bit0 存储下限值 (0 表示默认 95%)

	ECAddrFullChargeCapLow = 0x0404 // 满充容量低位寄存器 (16-bit word，单位 mAh)

	ECAddrBatteryTemp       = 0x04A2 // 电池温度寄存器 (16-bit word，单位 0.1K，需减 2732 再除以 10 转为 °C)
	ECAddrBatteryRSOC       = 0x04AB // 电池相对充电状态 (RSOC) 百分比寄存器 (0~100%)
	ECAddrCycleCountByte1   = 0x04A6 // 电池循环次数寄存器 (16-bit word)
	ECAddrDesignCapacityLow = 0x0402 // 电池设计容量低位寄存器 (16-bit word，单位 mAh)
	ECAddrDesignVoltageLow  = 0x0408 // 电池设计电压低位寄存器 (16-bit word，单位 mV)
	ECAddrBSTBPRLow         = 0x0434 // 电池电流 (BST BPR) 低位寄存器 (16-bit word，单位 mA)
	ECAddrBSTBRCLow         = 0x0436 // 电池剩余容量 (BST BRC) 低位寄存器 (16-bit word，单位 mAh)
	ECAddrBSTBPVLow         = 0x0438 // 电池电压 (BST BPV) 低位寄存器 (16-bit word，单位 mV)
	ECAddrAPOEMByte         = 0x0741 // AP OEM 字节，bit0 = AP 存在标志（需置 1 才能修改充电模式）
	ECAddrSingleKBLEnable   = 0x078C // 键盘背光控制寄存器，bit5~bit6 为亮度等级 (0=关 1=低 2=高)，bit4 为使能位
	ECAddrModeCtrl          = 0x0751 // 性能模式控制寄存器，bit4/bit7 组合决定 TDP 档位 (25W/45W/65W)
)

// perfRegVal 性能模式（TDP 瓦数）对应写入 ECAddrModeCtrl 的寄存器值
var perfRegVal = map[int]byte{
	45: 0x00, // 性能
	25: 0xA0, // 办公
	65: 0x10, // 狂暴
}

// validTDPs 合法的 TDP 档位，用于校验输入
var validTDPs = map[int]bool{25: true, 45: true, 65: true}

type AcpiCall struct{}

func NewAcpiCall() *AcpiCall {
	return &AcpiCall{}
}

func isAcpiError(result string) bool {
	s := strings.TrimSpace(result)
	return strings.HasPrefix(s, "Error:") || strings.HasPrefix(s, "ACPI call failed")
}

func (a *AcpiCall) call(method string, args ...string) (string, error) {
	parts := append([]string{method}, args...)
	cmd := strings.Join(parts, " ")

	if err := os.WriteFile("/proc/acpi/call", []byte(cmd+"\n"), 0644); err != nil {
		return "", fmt.Errorf("acpi_call write: %w", err)
	}
	data, err := os.ReadFile("/proc/acpi/call")
	if err != nil {
		return "", fmt.Errorf("acpi_call read: %w", err)
	}
	result := strings.TrimSpace(string(data))
	if isAcpiError(result) {
		return "", fmt.Errorf("acpi_call error: %s", result)
	}
	return result, nil
}

func (a *AcpiCall) ReadByte(addr uint16) (byte, error) {
	result, err := a.call(acpiReadMethod, fmt.Sprintf("0x%04X", addr))
	if err != nil {
		return 0, err
	}
	result = strings.TrimSpace(strings.TrimRight(result, "\x00"))

	if strings.HasPrefix(result, "0x") || strings.HasPrefix(result, "0X") {
		val, err := strconv.ParseUint(result, 0, 8)
		if err != nil {
			return 0, fmt.Errorf("parse ACPI hex %q: %w", result, err)
		}
		return byte(val), nil
	}
	val, err := strconv.ParseUint(result, 10, 8)
	if err != nil {
		return 0, fmt.Errorf("parse ACPI dec %q: %w", result, err)
	}
	return byte(val), nil
}

func (a *AcpiCall) ReadWord(addrLow uint16) (uint16, error) {
	lo, err := a.ReadByte(addrLow)
	if err != nil {
		return 0, err
	}
	hi, err := a.ReadByte(addrLow + 1)
	if err != nil {
		return 0, err
	}
	return (uint16(hi) << 8) | uint16(lo), nil
}

func (a *AcpiCall) WriteByte(addr uint16, val byte) error {
	_, err := a.call(acpiWriteMethod, fmt.Sprintf("0x%04X", addr), fmt.Sprintf("0x%02X", val))
	return err
}

func (a *AcpiCall) ReadMode() (int, error) {
	val, err := a.ReadByte(ECAddrBatteryMode)
	if err != nil {
		return 0, err
	}
	bit4 := (val>>4)&1 == 1
	bit5 := (val>>5)&1 == 1
	switch {
	case bit4 && !bit5:
		return 90, nil
	case !bit4 && bit5:
		return 80, nil
	default:
		return 100, nil
	}
}

func (a *AcpiCall) WriteMode(pct int) error {
	apVal, err := a.ReadByte(ECAddrAPOEMByte)
	if err != nil {
		return err
	}
	if apVal&1 == 0 {
		apVal |= 1
		if err := a.WriteByte(ECAddrAPOEMByte, apVal); err != nil {
			return err
		}
	}
	val, err := a.ReadByte(ECAddrBatteryMode)
	if err != nil {
		return err
	}
	val &^= 0b00110000
	switch pct {
	case 90:
		val |= 0b00010000
	case 80:
		val |= 0b00100000
	}
	return a.WriteByte(ECAddrBatteryMode, val)
}

func (a *AcpiCall) ReadChargeLimitUp() (int, error) {
	val, err := a.ReadByte(ECAddrChargeLimitUp)
	if err != nil {
		return 0, err
	}
	if limit := val & 0x7F; limit != 0 {
		return int(limit), nil
	}
	return 100, nil
}

func (a *AcpiCall) WriteChargeLimitUp(pct int) error {
	if pct < 0 || pct > 100 {
		return fmt.Errorf("充电上限必须为 0-100, 输入为 %d", pct)
	}
	old, err := a.ReadByte(ECAddrChargeLimitUp)
	if err != nil {
		return err
	}
	preserved := old & 0x80
	val := preserved
	if pct != 100 {
		val |= byte(pct)
	}
	return a.WriteByte(ECAddrChargeLimitUp, val)
}

func (a *AcpiCall) ReadChargeLimitDown() (int, error) {
	val, err := a.ReadByte(ECAddrChargeLimitDown)
	if err != nil {
		return 0, err
	}
	if limit := val & 0x7F; limit != 0 {
		return int(limit), nil
	}
	return 95, nil
}

func (a *AcpiCall) WriteChargeLimitDown(pct int) error {
	if pct < 0 || pct > 95 {
		return fmt.Errorf("充电下限必须为 0-95, 输入为 %d", pct)
	}
	old, err := a.ReadByte(ECAddrChargeLimitDown)
	if err != nil {
		return err
	}
	preserved := old & 0x80
	val := preserved
	if pct != 0 {
		val |= byte(pct)
	}
	return a.WriteByte(ECAddrChargeLimitDown, val)
}

func (a *AcpiCall) ReadBatteryTemperature() (int, error) {
	raw, err := a.ReadWord(ECAddrBatteryTemp)
	if err != nil {
		return 0, err
	}
	if raw == 0 {
		return 0, nil
	}
	return (int(raw) - 2732) / 10, nil
}

func (a *AcpiCall) ReadCycleCount() (int, error) {
	val, err := a.ReadWord(ECAddrCycleCountByte1)
	return int(val), err
}

func (a *AcpiCall) ReadRSOC() (int, error) {
	val, err := a.ReadByte(ECAddrBatteryRSOC)
	return int(val), err
}

func (a *AcpiCall) ReadDesignCapacity() (int, error) {
	val, err := a.ReadWord(ECAddrDesignCapacityLow)
	return int(val), err
}

func (a *AcpiCall) ReadDesignVoltage() (int, error) {
	val, err := a.ReadWord(ECAddrDesignVoltageLow)
	return int(val), err
}

func (a *AcpiCall) ReadFullChargeCapacity() (int, error) {
	val, err := a.ReadWord(ECAddrFullChargeCapLow)
	return int(val), err
}

func (a *AcpiCall) ReadBatteryCurrent() (int, error) {
	val, err := a.ReadWord(ECAddrBSTBPRLow)
	return int(val), err
}

func (a *AcpiCall) ReadRemainingCapacity() (int, error) {
	val, err := a.ReadWord(ECAddrBSTBRCLow)
	return int(val), err
}

func (a *AcpiCall) ReadBatteryVoltage() (int, error) {
	val, err := a.ReadWord(ECAddrBSTBPVLow)
	return int(val), err
}

func (a *AcpiCall) ReadKBLightLevel() (int, error) {
	val, err := a.ReadByte(ECAddrSingleKBLEnable)
	if err != nil {
		return 0, err
	}
	return int(val >> 5), nil
}

func (a *AcpiCall) SetKBLightLevel(level int) error {
	if level < 0 || level > 2 {
		return fmt.Errorf("键盘亮度等级必须为 0-2, 输入为 %d", level)
	}
	val, err := a.ReadByte(ECAddrSingleKBLEnable)
	if err != nil {
		return err
	}
	val |= 0x10
	val &^= 0xE0
	val |= byte(level) << 5
	return a.WriteByte(ECAddrSingleKBLEnable, val)
}

// ReadPerfMode 读取当前性能模式，返回 TDP 瓦数 (25|45|65)
func (a *AcpiCall) ReadPerfMode() (int, error) {
	val, err := a.ReadByte(ECAddrModeCtrl)
	if err != nil {
		return 0, err
	}
	bit4 := (val>>4)&1 == 1
	bit7 := (val>>7)&1 == 1
	switch {
	case !bit4 && !bit7:
		return 45, nil // 性能
	case !bit4 && bit7:
		return 25, nil // 办公
	default:
		return 65, nil // 狂暴
	}
}

type ecReading struct {
	label string
	read  func() (string, error)
}

func printECStatus(a *AcpiCall) {
	fmt.Println("\n=== 当前配置如下 ===")

	var designCap, fullCap int
	var haveDesignCap, haveFullCap bool

	readings := []ecReading{
		{"手动模式        ", func() (string, error) {
			v, err := a.ReadByte(ECAddrAPOEMByte)
			if err != nil {
				return "", err
			}
			if v&1 != 0 {
				return "开启", nil
			}
			return "关闭", nil
		}},
		{"充电模式        ", func() (string, error) {
			v, err := a.ReadMode()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("~%d%%", v), nil
		}},
		{"充电上限        ", func() (string, error) {
			v, err := a.ReadChargeLimitUp()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%d%%", v), nil
		}},
		{"充电下限        ", func() (string, error) {
			v, err := a.ReadChargeLimitDown()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%d%%", v), nil
		}},
		{"电池温度        ", func() (string, error) {
			v, err := a.ReadBatteryTemperature()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%d°C", v), nil
		}},
		{"相对充电状态    ", func() (string, error) {
			v, err := a.ReadRSOC()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%d%%", v), nil
		}},
		{"循环次数        ", func() (string, error) {
			v, err := a.ReadCycleCount()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%d", v), nil
		}},
		{"设计容量        ", func() (string, error) {
			v, err := a.ReadDesignCapacity()
			if err != nil {
				return "", err
			}
			designCap, haveDesignCap = v, true
			return fmt.Sprintf("%d mAh", v), nil
		}},
		{"满充容量        ", func() (string, error) {
			v, err := a.ReadFullChargeCapacity()
			if err != nil {
				return "", err
			}
			fullCap, haveFullCap = v, true
			return fmt.Sprintf("%d mAh", v), nil
		}},
		{"剩余容量        ", func() (string, error) {
			v, err := a.ReadRemainingCapacity()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%d mAh", v), nil
		}},
		{"电池电压        ", func() (string, error) {
			v, err := a.ReadBatteryVoltage()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%d mV", v), nil
		}},
		{"设计电压        ", func() (string, error) {
			v, err := a.ReadDesignVoltage()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%d mV", v), nil
		}},
		{"电池电流        ", func() (string, error) {
			v, err := a.ReadBatteryCurrent()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%d mA", v), nil
		}},
		{"键盘灯          ", func() (string, error) {
			v, err := a.ReadKBLightLevel()
			if err != nil {
				return "", err
			}
			status := "关"
			if v > 0 {
				status = "开"
			}
			return fmt.Sprintf("%s (等级 %d)", status, v), nil
		}},
		{"性能模式        ", func() (string, error) {
			tdp, err := a.ReadPerfMode()
			if err != nil {
				return "", err
			}
			return fmt.Sprintf("%dW", tdp), nil
		}},
	}

	for _, r := range readings {
		val, err := r.read()
		if err != nil {
			fmt.Fprintf(os.Stderr, "%s: 错误: %v\n", r.label, err)
			continue
		}
		fmt.Printf("%s: %s\n", r.label, val)

		// 满充容量读取完成后，若设计容量也已知，顺带算出电池损耗
		if r.label == "满充容量        " && haveDesignCap && haveFullCap && designCap > 0 {
			wear := float64(designCap-fullCap) / float64(designCap) * 100.0
			fmt.Printf("电池损耗        : %.1f%%\n", wear)
		}
	}
}

func main() {
	flagMode := flag.Int("mode", -1, "设置充电模式: 100|90|80")
	flagLimitUp := flag.Int("limit-up", -1, "设置充电上限百分比，默认100%")
	flagLimitDown := flag.Int("limit-down", -1, "设置充电下限/起始百分比，默认95%")
	flagStatus := flag.Bool("status", false, "读取当前电池充电状态")
	flagKBDLevel := flag.Int("kbd-level", -1, "设置键盘灯亮度 (0=关 1=低 2=高)")
	flagPerf := flag.Int("perf", -1, "设置性能模式TDP: 25|45|65")

	flag.Usage = func() {
		fmt.Fprintf(os.Stderr, "无界14x 控制中心 By LongSang01\n")
		fmt.Fprintf(os.Stderr, "依赖项: acpi_call\n\n")
		fmt.Fprintf(os.Stderr, "经过实际测试，充电模式和充电限制均无法正常工作，这两个功能仅供演示\n\n")
		fmt.Fprintf(os.Stderr, "选项:\n")
		fmt.Fprintf(os.Stderr, "  -mode int\n        设置充电模式: 100|90|80\n")
		fmt.Fprintf(os.Stderr, "  -limit-up int\n        设置充电上限百分比，默认100%%\n")
		fmt.Fprintf(os.Stderr, "  -limit-down int\n        设置充电下限/起始百分比，默认95%%\n")
		fmt.Fprintf(os.Stderr, "  -status\n        读取当前电池充电状态\n")
		fmt.Fprintf(os.Stderr, "  -kbd-level int\n        设置键盘灯亮度 (0=关 1=低 2=高)\n")
		fmt.Fprintf(os.Stderr, "  -perf int\n        设置性能模式TDP: 25|45|65\n")
		fmt.Fprintf(os.Stderr, "\n示例:\n")
		fmt.Fprintf(os.Stderr, "  sudo %s -status\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -mode 80\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -limit-up 80\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -limit-down 50\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -limit-up 0 -limit-down 0 (恢复默认)\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -kbd-level 2\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -perf 45\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -mode 80 -kbd-level 0\n", os.Args[0])
	}

	flag.Parse()

	if _, err := os.Stat("/proc/acpi/call"); err != nil {
		fmt.Fprintln(os.Stderr, "错误: /proc/acpi/call 不存在，请确保 acpi_call 内核模块已加载。")
		os.Exit(1)
	}

	acpi := NewAcpiCall()

	hasAction := *flagMode >= 0 || *flagLimitUp >= 0 || *flagLimitDown >= 0 ||
		*flagStatus || *flagKBDLevel >= 0 || *flagPerf >= 0

	if !hasAction {
		*flagStatus = true
	}

	if *flagMode >= 0 && (*flagLimitUp >= 0 || *flagLimitDown >= 0) {
		fmt.Fprintln(os.Stderr, "错误: -mode 和 -limit-up/-limit-down 不能同时使用")
		os.Exit(1)
	}

	if *flagMode >= 0 {
		switch *flagMode {
		case 100, 90, 80:
		default:
			fmt.Fprintf(os.Stderr, "未知模式: %d (请使用: 80|90|100)\n", *flagMode)
			os.Exit(1)
		}
		if err := acpi.WriteMode(*flagMode); err != nil {
			fmt.Fprintf(os.Stderr, "设置模式错误: %v\n", err)
			os.Exit(1)
		}
		fmt.Printf("充电模式已设置为 ~%d%%\n", *flagMode)
	}

	if *flagLimitUp >= 0 {
		if err := acpi.WriteChargeLimitUp(*flagLimitUp); err != nil {
			fmt.Fprintf(os.Stderr, "设置充电上限错误: %v\n", err)
			os.Exit(1)
		}
		fmt.Printf("充电上限已设置为 %d%%\n", *flagLimitUp)
	}

	if *flagLimitDown >= 0 {
		if err := acpi.WriteChargeLimitDown(*flagLimitDown); err != nil {
			fmt.Fprintf(os.Stderr, "设置充电下限错误: %v\n", err)
			os.Exit(1)
		}
		fmt.Printf("充电下限已设置为 %d%%\n", *flagLimitDown)
	}

	if *flagKBDLevel >= 0 {
		if err := acpi.SetKBLightLevel(*flagKBDLevel); err != nil {
			fmt.Fprintf(os.Stderr, "设置键盘灯亮度错误: %v\n", err)
			os.Exit(1)
		}
		fmt.Printf("键盘灯亮度已设置为 %d\n", *flagKBDLevel)
	}

	if *flagPerf >= 0 {
		if !validTDPs[*flagPerf] {
			fmt.Fprintf(os.Stderr, "未知TDP: %d (请使用: 25|45|65)\n", *flagPerf)
			os.Exit(1)
		}
		if err := acpi.WriteByte(ECAddrModeCtrl, perfRegVal[*flagPerf]); err != nil {
			fmt.Fprintf(os.Stderr, "设置性能模式错误: %v\n", err)
			os.Exit(1)
		}
		fmt.Printf("性能模式已设置为 %dW\n", *flagPerf)
	}

	if *flagStatus {
		printECStatus(acpi)
	}
}
