package main

import (
	"flag"
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"
)

const (
	acpiReadMethod  = "\\_SB.INOU.ECRR"
	acpiWriteMethod = "\\_SB.INOU.ECRW"

	ECAddrBatteryMode   = 0x07A6 // 充电模式控制寄存器，bit4/bit5 决定充电截止百分比 (100/90/80)
	ECAddrChargeLimitUp = 0x07B9 // 充电上限百分比寄存器

	// EC 每秒会检查 0x07C3 / 0x0770 只有 true 时才会开启 limit_enabled
	ECAddrChargeGate   = 0x0742 // bit2 (0x04) = 充电限制门控是否已启用
	ECAddrChargeState1 = 0x07C3 // EC 内部状态寄存器 #1
	ECAddrChargeState2 = 0x0770 // EC 内部状态寄存器 #2

	ECAddrFullChargeCapLow  = 0x0404 // 满充容量低位寄存器 (16-bit word，单位 mAh)
	ECAddrBatteryTemp       = 0x04A2 // 电池温度寄存器 (16-bit word，单位 0.1K，需减 2732 再除以 10 转为 °C)
	ECAddrBatteryRSOC       = 0x04AB // 电池相对充电状态 (RSOC) 百分比寄存器 (0~100%)
	ECAddrCycleCountLow     = 0x04A6 // 电池循环次数寄存器 (16-bit word)
	ECAddrDesignCapacityLow = 0x0402 // 电池设计容量低位寄存器 (16-bit word，单位 mAh)
	ECAddrDesignVoltageLow  = 0x0408 // 电池设计电压低位寄存器 (16-bit word，单位 mV)
	ECAddrBSTBPRLow         = 0x0434 // 电池电流 (BST BPR) 低位寄存器 (16-bit word，单位 mA)
	ECAddrBSTBRCLow         = 0x0436 // 电池剩余容量 (BST BRC) 低位寄存器 (16-bit word，单位 mAh)
	ECAddrBSTBPVLow         = 0x0438 // 电池电压 (BST BPV) 低位寄存器 (16-bit word，单位 mV)
	ECAddrAPOEMByte         = 0x0741 // AP OEM 字节，bit0 = AP 存在标志（需置 1 才能修改充电模式）
	ECAddrSingleKBLEnable   = 0x078C // 键盘背光控制寄存器，bit5~bit6 为亮度等级 (0=关 1=低 2=高)，bit4 为使能位
	ECAddrModeCtrl          = 0x0751 // 性能模式控制寄存器，bit4/bit5/bit7 组合决定 TDP 档位 (25W/45W/65W)
)

// perfRegVal 性能模式（TDP 瓦数）对应写入 ECAddrModeCtrl 的完整寄存器值。
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

// isAcpiError 判断 acpi_call 返回内容是否表示出错。
func isAcpiError(result string) bool {
	s := strings.TrimSpace(result)
	if s == "" {
		return true
	}
	if strings.HasPrefix(s, "Error:") || strings.HasPrefix(s, "ACPI call failed") {
		return true
	}
	trimmed := strings.TrimRight(s, "\x00")
	trimmed = strings.TrimSpace(trimmed)
	if strings.HasPrefix(trimmed, "0x") || strings.HasPrefix(trimmed, "0X") {
		_, err := strconv.ParseUint(trimmed, 0, 64)
		return err != nil
	}
	_, err := strconv.ParseUint(trimmed, 10, 64)
	return err != nil
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

func (a *AcpiCall) readWordAt(addr uint16) (int, error) {
	v, err := a.ReadWord(addr)
	return int(v), err
}

func (a *AcpiCall) ReadCycleCount() (int, error)         { return a.readWordAt(ECAddrCycleCountLow) }
func (a *AcpiCall) ReadDesignCapacity() (int, error)     { return a.readWordAt(ECAddrDesignCapacityLow) }
func (a *AcpiCall) ReadDesignVoltage() (int, error)      { return a.readWordAt(ECAddrDesignVoltageLow) }
func (a *AcpiCall) ReadFullChargeCapacity() (int, error) { return a.readWordAt(ECAddrFullChargeCapLow) }
func (a *AcpiCall) ReadBatteryCurrent() (int, error)     { return a.readWordAt(ECAddrBSTBPRLow) }
func (a *AcpiCall) ReadRemainingCapacity() (int, error)  { return a.readWordAt(ECAddrBSTBRCLow) }
func (a *AcpiCall) ReadBatteryVoltage() (int, error)     { return a.readWordAt(ECAddrBSTBPVLow) }

func (a *AcpiCall) ReadRSOC() (int, error) {
	val, err := a.ReadByte(ECAddrBatteryRSOC)
	return int(val), err
}

// ReadMode 读取当前充电模式 (100|90|80)。
func (a *AcpiCall) ReadMode() (int, error) {
	val, err := a.ReadByte(ECAddrBatteryMode)
	if err != nil {
		return 0, err
	}
	bit4 := (val>>4)&1 == 1
	bit5 := (val>>5)&1 == 1
	switch {
	case !bit4 && !bit5:
		return 100, nil
	case bit4 && !bit5:
		return 90, nil
	case !bit4 && bit5:
		return 80, nil
	default:
		return 0, fmt.Errorf("充电模式寄存器状态异常 (0x%02X)", val)
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
	if pct < 1 || pct > 100 {
		return fmt.Errorf("充电上限必须为 1-100, 输入为 %d", pct)
	}

	old, err := a.ReadByte(ECAddrChargeLimitUp)
	if err != nil {
		return fmt.Errorf("读取充电上限寄存器失败: %w", err)
	}
	newVal := (old & 0x80) | byte(pct)
	if err := a.WriteByte(ECAddrChargeLimitUp, newVal); err != nil {
		return fmt.Errorf("写入充电上限失败: %w", err)
	}

	state1, err1 := a.ReadByte(ECAddrChargeState1)
	state2, err2 := a.ReadByte(ECAddrChargeState2)
	if err1 != nil || err2 != nil {
		fmt.Fprintf(os.Stderr, "警告: 读取状态寄存器失败 (state1 err=%v, state2 err=%v)，跳过 EC 触发步骤\n", err1, err2)
	} else if !(state1 == 4 || state1 == 5 || state2 == 4 || state2 == 5) {
		// EC 固件逻辑: limit_enabled = state_is(4) || state_is(5)
		// false → 需写 4 到 0x07C3 触发 EC
		saved := state1
		if err := a.WriteByte(ECAddrChargeState1, 0x04); err != nil {
			return fmt.Errorf("写入伪装状态失败: %w", err)
		}
		time.Sleep(2 * time.Second)
		if err := a.WriteByte(ECAddrChargeState1, saved); err != nil {
			return fmt.Errorf("恢复状态寄存器失败: %w", err)
		}
		time.Sleep(2 * time.Second)
	}

	got, err := a.ReadByte(ECAddrChargeLimitUp)
	if err != nil {
		return fmt.Errorf("校验读取充电上限失败: %w", err)
	}
	if int(got&0x7F) != pct {
		return fmt.Errorf("写入后校验不通过: 读取 %d%%, 期望 %d%%", got&0x7F, pct)
	}
	return nil
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
	val &^= 0x60
	val |= byte(level) << 5
	return a.WriteByte(ECAddrSingleKBLEnable, val)
}

// ReadPerfMode 读取当前性能模式，返回 TDP 瓦数 (25|45|65)
const perfRegMask byte = 0x80 | 0x20 | 0x10 // = 0xB0

// 修改：ReadPerfMode 改为反查 perfRegVal
func (a *AcpiCall) ReadPerfMode() (int, error) {
	val, err := a.ReadByte(ECAddrModeCtrl)
	if err != nil {
		return 0, err
	}
	masked := val & perfRegMask
	for tdp, regVal := range perfRegVal {
		if masked == regVal&perfRegMask {
			return tdp, nil
		}
	}
	return 0, fmt.Errorf("性能模式寄存器状态异常 (0x%02X)", val)
}

// WritePerfMode 写入性能模式
func (a *AcpiCall) WritePerfMode(tdp int) error {
	val, ok := perfRegVal[tdp]
	if !ok {
		return fmt.Errorf("未知TDP: %d", tdp)
	}
	return a.WriteByte(ECAddrModeCtrl, val)
}

type ecReading struct {
	label string
	read  func() (string, error)
}

func printECStatus(a *AcpiCall) {
	fmt.Println("=== 当前配置如下 ===")
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
			gate, gerr := a.ReadByte(ECAddrChargeGate)
			enabled := "未生效"
			if gerr == nil && gate&0x04 != 0 {
				enabled = "已生效"
			}
			return fmt.Sprintf("%d%% (%s)", v, enabled), nil
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
		{"电池损耗        ", func() (string, error) {
			if !haveDesignCap || !haveFullCap || designCap <= 0 {
				return "N/A", nil
			}
			wear := float64(designCap-fullCap) / float64(designCap) * 100.0
			return fmt.Sprintf("%.1f%%", wear), nil
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
	}
}

func main() {
	flagMode := flag.Int("mode", -1, "设置充电模式: 100|90|80")
	flagLimitUp := flag.Int("limit-up", -1, "设置充电上限百分比(1-100)")
	flagStatus := flag.Bool("status", false, "读取当前电池充电状态")
	flagKBDLevel := flag.Int("kbd-level", -1, "设置键盘灯亮度 (0=关 1=低 2=高)")
	flagPerf := flag.Int("perf", -1, "设置性能模式TDP: 25|45|65")

	flag.Usage = func() {
		fmt.Fprintf(os.Stderr, "无界14x 控制中心 By LongSang01\n")
		fmt.Fprintf(os.Stderr, "依赖项: acpi_call\n\n")
		fmt.Fprintf(os.Stderr, "经过实际测试，充电模式无法正常工作，仅供演示；充电上限已经可以正常工作\n")
		fmt.Fprintf(os.Stderr, "选项:\n")
		fmt.Fprintf(os.Stderr, "  -mode int\n        设置充电模式: 100|90|80 (不可用)\n")
		fmt.Fprintf(os.Stderr, "  -limit-up int\n        设置充电上限百分比 (1-100)\n")
		fmt.Fprintf(os.Stderr, "  -status\n        读取当前电池充电状态\n")
		fmt.Fprintf(os.Stderr, "  -kbd-level int\n        设置键盘灯亮度 (0=关 1=低 2=高)\n")
		fmt.Fprintf(os.Stderr, "  -perf int\n        设置性能模式TDP: 25|45|65\n")
		fmt.Fprintf(os.Stderr, "\n示例:\n")
		fmt.Fprintf(os.Stderr, "  sudo %s -status\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -mode 80\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -limit-up 80\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -kbd-level 2\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -perf 45\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  sudo %s -limit-up 80 -kbd-level 0\n", os.Args[0])
	}
	flag.Parse()

	if _, err := os.Stat("/proc/acpi/call"); err != nil {
		fmt.Fprintln(os.Stderr, "错误: /proc/acpi/call 不存在，请确保 acpi_call 内核模块已加载。")
		os.Exit(1)
	}

	acpi := NewAcpiCall()

	hasAction := *flagMode >= 0 || *flagLimitUp >= 0 ||
		*flagStatus || *flagKBDLevel >= 0 || *flagPerf >= 0
	if !hasAction {
		*flagStatus = true
	}

	if *flagMode >= 0 && *flagLimitUp >= 0 {
		fmt.Fprintln(os.Stderr, "错误: -mode 和 -limit-up 不能同时使用")
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
		if err := acpi.WritePerfMode(*flagPerf); err != nil {
			fmt.Fprintf(os.Stderr, "设置性能模式错误: %v\n", err)
			os.Exit(1)
		}
		fmt.Printf("性能模式已设置为 %dW\n", *flagPerf)
	}

	if *flagStatus {
		printECStatus(acpi)
	}
}
