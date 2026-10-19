package main

import (
	"bytes"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"maps"
	"os"
	"slices"
	"strconv"
	"strings"
	"time"
)

// EC 寄存器

const (
	acpiCallPath = "/proc/acpi/call"
	acpiRead     = `\_SB.INOU.ECRR`
	acpiWrite    = `\_SB.INOU.ECRW`
)

const (
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

// field 描述 EC 寄存器里的一组枚举标志位
type field struct {
	name, hint string
	addr       uint16
	mask       byte
	values     map[int]byte
	names      map[int]string
}

var (
	chargeMode = field{
		name: "充电模式", hint: "0|1|2", addr: ECAddrBatteryMode, mask: 0x30,
		values: map[int]byte{0: 0x00, 1: 0x10, 2: 0x20},
		names:  map[int]string{0: "高容量", 1: "均衡", 2: "固定充电"},
	}
	kbLight = field{
		name: "键盘灯亮度", hint: "0|1|2", addr: ECAddrSingleKBLEnable, mask: 0x70,
		values: map[int]byte{0: 0x10, 1: 0x30, 2: 0x50},
		names:  map[int]string{0: "关", 1: "低", 2: "高"},
	}
	perfMode = field{
		name: "性能模式TDP", hint: "25|45|65", addr: ECAddrModeCtrl, mask: 0xB0,
		values: map[int]byte{25: 0xA0, 45: 0x00, 65: 0x10},
		names:  map[int]string{25: "25W", 45: "45W", 65: "65W"},
	}
)

func (f field) read() (int, error) {
	raw, err := ecRead(f.addr)
	if err != nil {
		return 0, err
	}
	// 按键排序遍历，避免 map 随机顺序在多组位有重叠时产生不确定结果
	for _, k := range slices.Sorted(maps.Keys(f.values)) {
		if raw&f.mask == f.values[k]&f.mask {
			return k, nil
		}
	}
	return 0, fmt.Errorf("%s寄存器状态异常 (0x%02X)", f.name, raw)
}

func (f field) write(key int) error {
	v, ok := f.values[key]
	if !ok {
		return fmt.Errorf("未知%s: %d (请使用: %s)", f.name, key, f.hint)
	}
	return ecWriteBits(f.addr, f.mask, v)
}

// 向 /proc/acpi/call 写入 ACPI 调用字符串并读取结果
func acpiCall(call string) (string, error) {
	f, err := os.OpenFile(acpiCallPath, os.O_WRONLY, 0)
	if err != nil {
		return "", fmt.Errorf("打开(写) %s 失败: %w", acpiCallPath, err)
	}
	n, err := f.WriteString(call)
	if cerr := f.Close(); err == nil {
		err = cerr
	}
	if err != nil {
		return "", fmt.Errorf("ACPI 调用写入失败: %w", err)
	}
	if n != len(call) {
		return "", fmt.Errorf("ACPI 调用写入不完整: 写入 %d/%d 字节", n, len(call))
	}

	buf, err := os.ReadFile(acpiCallPath)
	if err != nil {
		return "", fmt.Errorf("读取 ACPI 结果失败: %w", err)
	}
	out := strings.TrimSpace(strings.TrimRight(string(buf), "\x00"))
	if strings.HasPrefix(out, "Error") {
		return "", fmt.Errorf("ACPI 方法执行失败: %s", out)
	}
	return out, nil
}

func ecRead(addr uint16) (byte, error) {
	out, err := acpiCall(fmt.Sprintf("%s 0x%04X", acpiRead, addr))
	if err != nil {
		return 0, fmt.Errorf("读取 EC 0x%04X 失败: %w", addr, err)
	}
	v, err := strconv.ParseUint(strings.TrimPrefix(out, "0x"), 16, 8)
	if err != nil {
		return 0, fmt.Errorf("读取 EC 0x%04X: 解析 %q 失败: %w", addr, out, err)
	}
	return byte(v), nil
}

// 读取两个连续字节，组成 16 位字（小端）
func ecReadWord(addr uint16) (uint16, error) {
	lo, err := ecRead(addr)
	if err != nil {
		return 0, err
	}
	hi, err := ecRead(addr + 1)
	if err != nil {
		return 0, err
	}
	return uint16(lo) | uint16(hi)<<8, nil
}

func ecWrite(addr uint16, val byte) error {
	if _, err := acpiCall(fmt.Sprintf("%s 0x%04X 0x%02X", acpiWrite, addr, val)); err != nil {
		return fmt.Errorf("写入 EC 0x%04X=0x%02X 失败: %w", addr, val, err)
	}
	return nil
}

// 读取旧值，仅替换 mask 覆盖的标志位，值未变化则不写入
func ecWriteBits(addr uint16, mask, val byte) error {
	old, err := ecRead(addr)
	if err != nil {
		return err
	}
	if next := old&^mask | val&mask; next != old {
		return ecWrite(addr, next)
	}
	return nil
}

// 充电控制

func setChargeMode(mode int) error {
	// 先打开手动模式
	if err := ecWriteBits(ECAddrAPOEMByte, 0x01, 0x01); err != nil {
		return err
	}
	return chargeMode.write(mode)
}

func readChargeLimit() (int, error) {
	val, err := ecRead(ECAddrChargeLimitUp)
	if err != nil {
		return 0, err
	}
	if val&0x7F == 0 {
		return 0, errors.New("充电上限为0, 请检查")
	}
	return int(val & 0x7F), nil
}

// 写入充电上限，原版EC需要修改状态值等待EC刷新
func setChargeLimit(pct int) error {
	if pct < 1 || pct > 100 {
		return fmt.Errorf("充电上限必须为 1-100, 输入为 %d", pct)
	}
	if err := ecWriteBits(ECAddrChargeLimitUp, 0x7F, byte(pct)); err != nil {
		return fmt.Errorf("写入充电上限失败: %w", err)
	}

	// 触发刷新前必须能读到原值，否则无法安全恢复
	s1, err := ecRead(ECAddrChargeState1)
	if err != nil {
		return fmt.Errorf("读取状态寄存器 0x%04X 失败: %w", ECAddrChargeState1, err)
	}
	s2, err := ecRead(ECAddrChargeState2)
	if err != nil {
		return fmt.Errorf("读取状态寄存器 0x%04X 失败: %w", ECAddrChargeState2, err)
	}

	//已刷BIOS，忘了值是啥了，都校验一下
	if s1 != 4 && s1 != 5 && s2 != 4 && s2 != 5 {
		if err := ecWrite(ECAddrChargeState1, 0x04); err != nil {
			return fmt.Errorf("写入修改状态失败: %w", err)
		}
		time.Sleep(2 * time.Second)
		if err := ecWrite(ECAddrChargeState1, s1); err != nil {
			// 恢复失败时 0x07C3 会停留在 0x04，需要人工确认
			return fmt.Errorf("恢复状态寄存器 0x%04X=0x%02X 失败, EC 可能仍处于触发状态: %w",
				ECAddrChargeState1, s1, err)
		}
		time.Sleep(2 * time.Second)
	}

	// 验证 limit_enabled (0x0742 bit2) 是否已生效
	gate, err := ecRead(ECAddrChargeGate)
	if err != nil {
		return fmt.Errorf("读取 limit_enabled 失败: %w", err)
	}
	if gate&0x04 == 0 {
		return errors.New("limit_enabled 未生效 (0x0742 bit2=0)")
	}
	return nil
}

// 命令行选项

type option struct {
	name, label, help string
	val               int // -1 = 未设置
	set               func(int) error
	names             map[int]string
}

func (o *option) display() string {
	if n, ok := o.names[o.val]; ok {
		return fmt.Sprintf("%s (%d)", n, o.val)
	}
	return strconv.Itoa(o.val)
}

var (
	optMode = &option{name: "mode", label: "充电模式", val: -1,
		help: "设置充电模式: 0=高容量 1=均衡 2=固定充电", set: setChargeMode, names: chargeMode.names}
	optLimit = &option{name: "limit-up", label: "充电上限", val: -1,
		help: "设置充电上限百分比(1-100)", set: setChargeLimit}
	optKBD = &option{name: "kbd-level", label: "键盘灯亮度", val: -1,
		help: "设置键盘灯亮度 (0=关 1=低 2=高)", set: kbLight.write, names: kbLight.names}
	optPerf = &option{name: "perf", label: "性能模式", val: -1,
		help: "设置性能模式TDP: 25|45|65", set: perfMode.write, names: perfMode.names}

	options = []*option{optMode, optLimit, optKBD, optPerf} // 应用顺序
)

// JSON 配置

type config struct {
	path  string
	raw   map[string]json.RawMessage
	order []string // 文件中的键顺序，写回时保持不变
}

func loadConfig(path string) (*config, error) {
	if path == "" {
		return nil, nil
	}
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	c := &config{path: path, raw: map[string]json.RawMessage{}}
	// 逐键解析以记录原始顺序（map 本身不保序）
	dec := json.NewDecoder(bytes.NewReader(data))
	tok, err := dec.Token()
	if err != nil {
		return nil, fmt.Errorf("解析 JSON 失败: %w", err)
	}
	if tok != json.Delim('{') {
		return nil, errors.New("解析 JSON 失败: 顶层必须是对象")
	}
	for dec.More() {
		tok, err := dec.Token()
		if err != nil {
			return nil, fmt.Errorf("解析 JSON 失败: %w", err)
		}
		key, ok := tok.(string)
		if !ok {
			return nil, errors.New("解析 JSON 失败: 键必须为字符串")
		}
		var val json.RawMessage
		if err := dec.Decode(&val); err != nil {
			return nil, fmt.Errorf("解析 JSON 失败: %w", err)
		}
		if _, dup := c.raw[key]; !dup {
			c.order = append(c.order, key)
		}
		c.raw[key] = val
	}
	return c, nil
}

func configGet[T any](c *config, key string) (v T, ok bool, err error) {
	if c == nil {
		return v, false, nil
	}
	raw, found := c.raw[key]
	if !found {
		return v, false, nil
	}
	if err := json.Unmarshal(raw, &v); err != nil {
		return v, false, fmt.Errorf("配置项 %s 的值 %s 类型不正确", key, raw)
	}
	return v, true, nil
}

func (c *config) put(key string, v any) error {
	b, err := json.Marshal(v)
	if err != nil {
		return err
	}
	if _, exists := c.raw[key]; !exists {
		c.order = append(c.order, key)
	}
	c.raw[key] = b
	// 按原始键顺序拼回，再统一缩进
	parts := make([]string, 0, len(c.order))
	for _, k := range c.order {
		kb, err := json.Marshal(k)
		if err != nil {
			return err
		}
		parts = append(parts, string(kb)+":"+string(c.raw[k]))
	}
	var out bytes.Buffer
	if err := json.Indent(&out, []byte("{"+strings.Join(parts, ",")+"}"), "", "  "); err != nil {
		return err
	}
	// 保持固定的临时文件名，写完后 fsync 再原子替换
	perm := os.FileMode(0o644)
	tmp := c.path + ".tmp"
	f, err := os.OpenFile(tmp, os.O_WRONLY|os.O_CREATE|os.O_TRUNC, perm)
	if err != nil {
		return err
	}
	if _, err := f.Write(append(out.Bytes(), '\n')); err != nil {
		f.Close()
		return err
	}
	if err := f.Sync(); err != nil {
		f.Close()
		return err
	}
	if err := f.Close(); err != nil {
		return err
	}
	if err := os.Chmod(tmp, perm); err != nil {
		return err
	}
	return os.Rename(tmp, c.path)
}

// 命令行没给的选项，才使用 JSON 里的值
func (c *config) fill(opts []*option) error {
	given := map[string]bool{}
	flag.Visit(func(f *flag.Flag) { given[f.Name] = true })
	for _, o := range opts {
		if given[o.name] {
			continue
		}
		v, ok, err := configGet[int](c, o.name)
		if err != nil {
			return err
		}
		if ok {
			o.val = v
		}
	}
	return nil
}

// 定时充满，必须启用配置文件

const (
	keyFullDays = "full-days"
	keyLastFull = "last-full-charge"
	dateLayout  = "2006-01-02" //模板不能改
)

// 距上次充满的天数 >= period 即视为到期；记录缺失或无法解析也视为到期
func fullChargeDue(last string, period int) (bool, string) {
	if last == "" {
		return true, "无上次充满记录"
	}

	t, err := time.Parse(dateLayout, last)
	if err != nil {
		return true, fmt.Sprintf("上次充满日期 %q 无法解析", last)
	}

	now := time.Now()
	today := time.Date(now.Year(), now.Month(), now.Day(), 0, 0, 0, 0, time.UTC)

	lastDay := time.Date(t.Year(), t.Month(), t.Day(), 0, 0, 0, 0, time.UTC)
	days := int(today.Sub(lastDay).Hours() / 24)

	if days < 0 {
		return true, fmt.Sprintf("上次充满日期 %s 晚于今天，视为到期", last)
	}
	if days >= period {
		return true, fmt.Sprintf("距上次充满 %s 已 %d 天，达到 %d 天周期", last, days, period)
	}
	return false, fmt.Sprintf("距上次充满 %s 已 %d 天，周期 %d 天", last, days, period)
}

// 到期则把本次充电模式改为高容量(0)、充电上限改为 100，返回是否到期
func planFullCharge(c *config) (bool, error) {
	period, ok, err := configGet[int](c, keyFullDays)
	if err != nil {
		return false, err
	}
	if !ok || period == 0 {
		return false, nil
	}
	if period < 0 {
		fmt.Fprintf(os.Stderr, "%s=%d 无效，已忽略\n", keyFullDays, period)
		return false, nil
	}
	if optLimit.val < 1 {
		return false, errors.New("使用 full-days 时需要同时设置 limit-up (正常的充电上限)")
	}
	last, _, err := configGet[string](c, keyLastFull)
	if err != nil {
		return false, err
	}
	due, why := fullChargeDue(last, period)
	if due {
		fmt.Printf("%s, 本次充电模式设为高容量, 充电上限设为 100%%\n", why)
		optMode.val = 0
		optLimit.val = 100
	} else {
		fmt.Printf("%s, 使用常规充电\n", why)
	}
	return due, nil
}

// 状态输出

func ignore[T any](v T, _ error) T { return v }

func printStatus() {
	b := func(addr uint16) byte { return ignore(ecRead(addr)) }
	w := func(addr uint16) uint16 { return ignore(ecReadWord(addr)) }

	mode := ignore(chargeMode.read())
	kb := ignore(kbLight.read())
	perf := ignore(perfMode.read())
	design, full := w(ECAddrDesignCapacityLow), w(ECAddrFullChargeCapLow)

	ap := "关闭"
	if b(ECAddrAPOEMByte)&1 != 0 {
		ap = "开启"
	}
	gate := "未生效"
	if b(ECAddrChargeGate)&0x04 != 0 {
		gate = "已生效"
	}
	temp := 0
	if raw := w(ECAddrBatteryTemp); raw != 0 {
		temp = (int(raw) - 2732) / 10
	}
	wear := "N/A"
	if design > 0 {
		wear = fmt.Sprintf("%.1f%%", float64(design-full)/float64(design)*100)
	}

	fmt.Println("=== 当前配置如下 ===")
	fmt.Printf("手动模式        : %s\n", ap)
	fmt.Printf("充电模式        : %s (%d)\n", chargeMode.names[mode], mode)
	fmt.Printf("充电上限        : %d%% (%s)\n", ignore(readChargeLimit()), gate)
	fmt.Printf("电池温度        : %d°C\n", temp)
	fmt.Printf("相对充电状态    : %d%%\n", b(ECAddrBatteryRSOC))
	fmt.Printf("循环次数        : %d\n", w(ECAddrCycleCountLow))
	fmt.Printf("设计容量        : %d mAh\n", design)
	fmt.Printf("满充容量        : %d mAh\n", full)
	fmt.Printf("剩余容量        : %d mAh\n", w(ECAddrBSTBRCLow))
	fmt.Printf("电池电压        : %d mV\n", w(ECAddrBSTBPVLow))
	fmt.Printf("设计电压        : %d mV\n", w(ECAddrDesignVoltageLow))
	fmt.Printf("电池损耗        : %s\n", wear)
	fmt.Printf("电池电流        : %d mA\n", int16(w(ECAddrBSTBPRLow))) //电流以16位整型解析，防止溢出，虽然这个电脑的EC并不会读出负数
	fmt.Printf("键盘灯          : %s (%d)\n", kbLight.names[kb], kb)
	fmt.Printf("性能模式        : %s\n", perfMode.names[perf])
}

// 入口

func usage() {
	fmt.Fprintf(os.Stderr, "无界14x 控制中心 By LongSang01\n依赖项: acpi_call\n\n用法: %s [选项]\n", os.Args[0])
	flag.PrintDefaults()
	fmt.Fprintf(os.Stderr, `
示例:
  sudo %[1]s -status
  sudo %[1]s -limit-up 80 -kbd-level 0 -perf 45
  sudo %[1]s -config /etc/wujie14xCC.json

JSON 配置示例:
{
  "mode": 2,
  "limit-up": 80,
  "kbd-level": 0,
  "full-days": 7,
  "last-full-charge": "2026-10-19"
}

  full-days          每隔 N 天充满一次, 0 或不写表示关闭, 需要同时配置 limit-up
  last-full-charge   上次充满日期 (YYYY-MM-DD)
`, os.Args[0])
}

func run() error {
	for _, o := range options {
		flag.IntVar(&o.val, o.name, -1, o.help)
	}
	status := flag.Bool("status", false, "读取当前电池充电状态")
	cfgPath := flag.String("config", "", "从 JSON 文件读取配置 (命令行参数优先)")
	flag.Usage = usage
	flag.Parse()

	cfg, err := loadConfig(*cfgPath)
	if err != nil {
		return fmt.Errorf("读取配置文件 %s 失败: %w", *cfgPath, err)
	}
	if err := cfg.fill(options); err != nil {
		return err
	}
	if _, err := os.Stat(acpiCallPath); err != nil {
		return fmt.Errorf("找不到 %s, 请安装 acpi_call", acpiCallPath)
	}

	// -status 且命令行没有任何设置项时为只读运行
	cliSet := map[string]bool{}
	flag.Visit(func(f *flag.Flag) { cliSet[f.Name] = true })
	readOnly := *status && !slices.ContainsFunc(options, func(o *option) bool { return cliSet[o.name] })

	// 满充周期功能仅在显式指定 -config 且需要写入时启用
	due := false
	if !readOnly && cfg != nil {
		due, err = planFullCharge(cfg)
		if err != nil {
			return err
		}
	}

	// 没有任何设置项时默认查看状态
	if !readOnly && !slices.ContainsFunc(options, func(o *option) bool { return o.val >= 0 }) {
		readOnly = true
	}

	if !readOnly {
		for _, o := range options {
			if o.val < 0 {
				continue
			}
			if err := o.set(o.val); err != nil {
				return fmt.Errorf("设置%s错误: %w", o.label, err)
			}
			fmt.Printf("%s已设置为 %s\n", o.label, o.display())
		}
		if due {
			today := time.Now().Format(dateLayout)
			if err := cfg.put(keyLastFull, today); err != nil {
				return fmt.Errorf("更新配置文件 %s 失败: %w", cfg.path, err)
			}
			fmt.Printf("已将 %s 更新为 %s\n", keyLastFull, today)
		}
	}

	if readOnly || *status {
		printStatus()
	}
	return nil
}

func main() {
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, "错误:", err)
		os.Exit(1)
	}
}
