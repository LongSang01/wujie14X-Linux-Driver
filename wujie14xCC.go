package main

import (
	"flag"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
	"time"
)

// =============================================================================
// EC 地址表
// =============================================================================

const (
	acpiCallPath    = "/proc/acpi/call"
	acpiReadMethod  = "\\_SB.INOU.ECRR"
	acpiWriteMethod = "\\_SB.INOU.ECRW"

	// EC 每秒会检查 0x07C3 / 0x0770 只有 true 时才会开启 limit_enabled
	// 需要短暂修改状态寄存器来触发刷新，才能让 limit_enabled 变为 true
	ECAddrChargeGate   = 0x0742 // bit2 (0x04) = 充电限制门控是否已启用
	ECAddrChargeState1 = 0x07C3 // EC 内部状态寄存器 #1
	ECAddrChargeState2 = 0x0770 // EC 内部状态寄存器 #2

	//实际上所有EC的写入都只需要修改标志位
	ECAddrBatteryMode       = 0x07A6 // 充电模式：默认0x08,,刷写slimbook的BIOS后默认值为0x00, 0x00=high_capacity 0x10=balanced 0x20=stationary
	ECAddrChargeLimitUp     = 0x07B9 // 充电上限百分比 (1-100)
	ECAddrFullChargeCapLow  = 0x0404 // 满充容量低位 (16-bit word，mAh)
	ECAddrBatteryTemp       = 0x04A2 // 电池温度 (16-bit word，0.1K，减 2732 再 /10 得 °C)
	ECAddrBatteryRSOC       = 0x04AB // 电池相对充电状态 (0-100%)
	ECAddrCycleCountLow     = 0x04A6 // 电池循环次数 (16-bit word)
	ECAddrDesignCapacityLow = 0x0402 // 电池设计容量低位 (16-bit word，mAh)
	ECAddrDesignVoltageLow  = 0x0408 // 电池设计电压低位 (16-bit word，mV)
	ECAddrBSTBPRLow         = 0x0434 // 电池电流 (BST BPR，16-bit word，mA)
	ECAddrBSTBRCLow         = 0x0436 // 电池剩余容量 (BST BRC，16-bit word，mAh)
	ECAddrBSTBPVLow         = 0x0438 // 电池电压 (BST BPV，16-bit word，mV)
	ECAddrAPOEMByte         = 0x0741 // AP 手动模式：默认0x80，0x00=关 0x01=开
	ECAddrSingleKBLEnable   = 0x078C // 键盘灯：0x10=关 0x30=低 0x50=高
	ECAddrModeCtrl          = 0x0751 // 性能模式：0x00=45W 0xA0=25W 0x10=65W
)

// 数值对应表
type bitFlagField struct {
	name    string
	hint    string
	addr    uint16
	mask    byte
	values  map[int]byte
	nameMap map[int]string
}

var chargeModeField = bitFlagField{
	name: "充电模式", hint: "0|1|2",
	addr: ECAddrBatteryMode, mask: 0x30,
	values:  map[int]byte{0: 0x00, 1: 0x10, 2: 0x20},
	nameMap: map[int]string{0: "高容量", 1: "均衡", 2: "固定充电"},
}

var kbLightField = bitFlagField{
	name: "键盘灯亮度", hint: "0|1|2",
	addr: ECAddrSingleKBLEnable, mask: 0x70,
	values:  map[int]byte{0: 0x10, 1: 0x30, 2: 0x50},
	nameMap: map[int]string{0: "关", 1: "低", 2: "高"},
}

var tdpField = bitFlagField{
	name: "性能模式TDP", hint: "25|45|65",
	addr: ECAddrModeCtrl, mask: 0xB0,
	values:  map[int]byte{25: 0xA0, 45: 0x00, 65: 0x10},
	nameMap: map[int]string{25: "25W", 45: "45W", 65: "65W"},
}

func (e *EC) readEnum(f bitFlagField) (int, error) {
	val, err := e.ReadByte(f.addr)
	if err != nil {
		return 0, err
	}
	masked := val & f.mask
	for k, v := range f.values {
		if masked == v&f.mask {
			return k, nil
		}
	}
	return 0, fmt.Errorf("%s寄存器状态异常 (0x%02X)", f.name, val)
}

func (e *EC) writeEnum(f bitFlagField, key int) error {
	v, ok := f.values[key]
	if !ok {
		return fmt.Errorf("未知%s: %d (请使用: %s)", f.name, key, f.hint)
	}
	return e.WriteBits(f.addr, f.mask, v)
}

type EC struct{}

// 验证 /proc/acpi/call 是否可用（需安装 acpi_call）
func OpenEC() (*EC, error) {
	if _, err := os.Stat(acpiCallPath); err != nil {
		return nil, fmt.Errorf("找不到 %s，请安装 acpi_call", acpiCallPath)
	}
	return &EC{}, nil
}

func (e *EC) Close() error { return nil }

// 向 /proc/acpi/call 写入 ACPI 调用字符串
func acpiWrite(call string) (string, error) {
	fWrite, err := os.OpenFile(acpiCallPath, os.O_WRONLY, 0)
	if err != nil {
		return "", fmt.Errorf("打开(写) %s 失败: %w", acpiCallPath, err)
	}
	_, err = fWrite.WriteString(call)
	fWrite.Close()
	if err != nil {
		return "", fmt.Errorf("ACPI 调用写入失败: %w", err)
	}

	fRead, err := os.Open(acpiCallPath)
	if err != nil {
		return "", fmt.Errorf("打开(读) %s 失败: %w", acpiCallPath, err)
	}
	defer fRead.Close()

	buf, err := io.ReadAll(fRead)
	if err != nil {
		return "", fmt.Errorf("读取 ACPI 结果失败: %w", err)
	}

	out := strings.TrimSpace(strings.TrimRight(string(buf), "\x00"))

	if strings.HasPrefix(out, "Error") {
		return "", fmt.Errorf("ACPI 方法执行失败: %s", out)
	}
	return out, nil
}

// 读取单字节
func (e *EC) ReadByte(addr uint16) (byte, error) {
	out, err := acpiWrite(fmt.Sprintf("%s 0x%04X", acpiReadMethod, addr))
	if err != nil {
		return 0, fmt.Errorf("读取 EC 0x%04X 失败: %w", addr, err)
	}
	hexPart := strings.TrimPrefix(out, "0x")
	if hexPart == "" {
		return 0, fmt.Errorf("读取 EC 0x%04X: 无法解析返回值 %q", addr, out)
	}
	v, err := strconv.ParseUint(hexPart, 16, 8)
	if err != nil {
		return 0, fmt.Errorf("读取 EC 0x%04X: 解析 %q 失败: %w", addr, out, err)
	}
	return byte(v), nil
}

// 读取两个连续字节，组成16位字节
func (e *EC) ReadWord(addrLow uint16) (uint16, error) {
	lo, err := e.ReadByte(addrLow)
	if err != nil {
		return 0, err
	}
	hi, err := e.ReadByte(addrLow + 1)
	if err != nil {
		return 0, err
	}
	return uint16(lo) | uint16(hi)<<8, nil
}

// 写入单字节
func (e *EC) WriteByte(addr uint16, val byte) error {
	_, err := acpiWrite(fmt.Sprintf("%s 0x%04X 0x%02X", acpiWriteMethod, addr, val))
	if err != nil {
		return fmt.Errorf("写入 EC 0x%04X=0x%02X 失败: %w", addr, val, err)
	}
	return nil
}

// 读取旧值然后替换标志位
func (e *EC) WriteBits(addr uint16, mask, val byte) error {
	old, err := e.ReadByte(addr)
	if err != nil {
		return err
	}
	newVal := (old &^ mask) | (val & mask)
	if newVal == old {
		return nil
	}
	return e.WriteByte(addr, newVal)
}

// =============================================================================
// 充电模式 / 充电上限 / 键盘灯 / 性能模式 / 电池信息
// =============================================================================

// 打开手动模式
func (e *EC) ensureAPMode() error {
	val, err := e.ReadByte(ECAddrAPOEMByte)
	if err != nil {
		return err
	}
	if val&0x01 != 0 {
		return nil
	}
	return e.WriteBits(ECAddrAPOEMByte, 0x01, 0x01)
}

// 设置充电模式
func (e *EC) WriteChargeMode(mode int) error {
	if err := e.ensureAPMode(); err != nil {
		return err
	}
	return e.writeEnum(chargeModeField, mode)
}

// 读取充电上限
func (e *EC) ReadChargeLimitUp() (int, error) {
	val, err := e.ReadByte(ECAddrChargeLimitUp)
	if err != nil {
		return 0, err
	}
	limit := val & 0x7F
	if limit == 0 {
		return 0, fmt.Errorf("充电上限为0, 请检查")
	}
	return int(limit), nil
}

// 写入充电上限，原版EC需要修改状态值等待EC刷新
func (e *EC) WriteChargeLimitUp(pct int) error {
	if pct < 1 || pct > 100 {
		return fmt.Errorf("充电上限必须为 1-100, 输入为 %d", pct)
	}
	if err := e.WriteBits(ECAddrChargeLimitUp, 0x7F, byte(pct)); err != nil {
		return fmt.Errorf("写入充电上限失败: %w", err)
	}

	state1, err1 := e.ReadByte(ECAddrChargeState1)
	state2, err2 := e.ReadByte(ECAddrChargeState2)
	switch {
	case err1 != nil || err2 != nil:
		fmt.Fprintf(os.Stderr, "读取状态寄存器失败 (state1 err=%v, state2 err=%v)\n", err1, err2)
	case state1 == 4 || state1 == 5 || state2 == 4 || state2 == 5: //已刷BIOS，忘了值是啥了，都校验一下
		// 已处于生效状态，无需触发
	default:
		if err := e.WriteByte(ECAddrChargeState1, 0x04); err != nil {
			return fmt.Errorf("写入修改状态失败: %w", err)
		}
		time.Sleep(2 * time.Second)
		if err := e.WriteByte(ECAddrChargeState1, state1); err != nil {
			return fmt.Errorf("恢复状态寄存器失败: %w", err)
		}
		time.Sleep(2 * time.Second)
	}

	got, err := e.ReadChargeLimitUp()
	if err != nil {
		return fmt.Errorf("校验读取充电上限失败: %w", err)
	}
	if got != pct {
		return fmt.Errorf("写入后校验不通过: 读取 %d%%, 期望 %d%%", got, pct)
	}
	return nil
}

// 读取电池温度，转成摄氏度
func (e *EC) ReadBatteryTemperature() (int, error) {
	raw, err := e.ReadWord(ECAddrBatteryTemp)
	if err != nil || raw == 0 {
		return 0, err
	}
	return (int(raw) - 2732) / 10, nil
}

func printECStatus(e *EC) {
	apMode, _ := e.ReadByte(ECAddrAPOEMByte)
	mode, _ := e.readEnum(chargeModeField)
	limit, _ := e.ReadChargeLimitUp()
	gate, _ := e.ReadByte(ECAddrChargeGate)
	temp, _ := e.ReadBatteryTemperature()
	rsoc, _ := e.ReadByte(ECAddrBatteryRSOC)
	cycles, _ := e.ReadWord(ECAddrCycleCountLow)
	designCap, _ := e.ReadWord(ECAddrDesignCapacityLow)
	fullCap, _ := e.ReadWord(ECAddrFullChargeCapLow)
	remainCap, _ := e.ReadWord(ECAddrBSTBRCLow)
	voltage, _ := e.ReadWord(ECAddrBSTBPVLow)
	designVolt, _ := e.ReadWord(ECAddrDesignVoltageLow)
	current, _ := e.ReadWord(ECAddrBSTBPRLow)
	kbLevel, _ := e.readEnum(kbLightField)
	tdp, _ := e.readEnum(tdpField)

	wear := "N/A"
	if designCap > 0 {
		wear = fmt.Sprintf("%.1f%%", float64(designCap-fullCap)/float64(designCap)*100)
	}
	ap := "关闭"
	if apMode&1 != 0 {
		ap = "开启"
	}
	gateStatus := "未生效"
	if gate&0x04 != 0 {
		gateStatus = "已生效"
	}

	fmt.Println("=== 当前配置如下 ===")
	fmt.Printf("手动模式        : %s\n", ap)
	fmt.Printf("充电模式        : %s (%d)\n", chargeModeField.nameMap[mode], mode)
	fmt.Printf("充电上限        : %d%% (%s)\n", limit, gateStatus)
	fmt.Printf("电池温度        : %d°C\n", temp)
	fmt.Printf("相对充电状态    : %d%%\n", rsoc)
	fmt.Printf("循环次数        : %d\n", cycles)
	fmt.Printf("设计容量        : %d mAh\n", designCap)
	fmt.Printf("满充容量        : %d mAh\n", fullCap)
	fmt.Printf("剩余容量        : %d mAh\n", remainCap)
	fmt.Printf("电池电压        : %d mV\n", voltage)
	fmt.Printf("设计电压        : %d mV\n", designVolt)
	fmt.Printf("电池损耗        : %s\n", wear)
	fmt.Printf("电池电流        : %d mA\n", int16(current)) //电流以16位整型解析，防止溢出，虽然这个电脑的EC并不会读出负数
	fmt.Printf("键盘灯          : %s (%d)\n", kbLightField.nameMap[kbLevel], kbLevel)
	fmt.Printf("性能模式        : %s\n", tdpField.nameMap[tdp])
}

func main() {
	flagMode := flag.Int("mode", -1, "设置充电模式: 0=高容量 1=均衡 2=固定充电")
	flagLimitUp := flag.Int("limit-up", -1, "设置充电上限百分比(1-100)")
	flagStatus := flag.Bool("status", false, "读取当前电池充电状态")
	flagKBDLevel := flag.Int("kbd-level", -1, "设置键盘灯亮度 (0=关 1=低 2=高)")
	flagPerf := flag.Int("perf", -1, "设置性能模式TDP: 25|45|65")

	flag.Usage = func() {
		fmt.Fprintf(os.Stderr, `无界14x 控制中心 By LongSang01
依赖项: acpi_call

用法: %s [选项]
  -mode int        充电模式 0(高容量) 1(均衡) 2(固定充电)
  -limit-up int    充电上限 1-100
  -status          查看配置状态
  -kbd-level int   键盘灯亮度 0(关闭) 1(低) 2(高)
  -perf int        性能模式 25|45|65

示例:
  sudo %s -status
  sudo %s -limit-up 80 -kbd-level 0
`, os.Args[0], os.Args[0], os.Args[0])
	}
	flag.Parse()

	ec, err := OpenEC()
	if err != nil {
		fmt.Fprintln(os.Stderr, "错误:", err)
		os.Exit(1)
	}
	defer ec.Close()

	if !(*flagMode >= 0 || *flagLimitUp >= 0 || *flagStatus || *flagKBDLevel >= 0 || *flagPerf >= 0) {
		*flagStatus = true
	}

	mustWrite := func(name string, flag *int, fn func(int) error, f bitFlagField) {
		if *flag < 0 {
			return
		}
		if err := fn(*flag); err != nil {
			fmt.Fprintf(os.Stderr, "设置%s错误: %v\n", name, err)
			os.Exit(1)
		}
		if n, ok := f.nameMap[*flag]; ok {
			fmt.Printf("%s已设置为 %s (%d)\n", name, n, *flag)
		} else {
			fmt.Printf("%s已设置为 %d\n", name, *flag)
		}
	}
	mustWrite("充电模式", flagMode, ec.WriteChargeMode, chargeModeField)
	mustWrite("充电上限", flagLimitUp, ec.WriteChargeLimitUp, bitFlagField{})
	mustWrite("键盘灯亮度", flagKBDLevel, func(v int) error { return ec.writeEnum(kbLightField, v) }, kbLightField)
	mustWrite("性能模式", flagPerf, func(v int) error { return ec.writeEnum(tdpField, v) }, tdpField)

	if *flagStatus {
		printECStatus(ec)
	}
}
