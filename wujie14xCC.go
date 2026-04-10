package main

import (
	"fmt"
	"os"
	"regexp"
	"strings"
	"time"
)

const acpiPath = "/proc/acpi/call"

// ---------------- ACPI ----------------
func execACPI(method, addr, val string) string {
	cmd := strings.TrimSpace(fmt.Sprintf("%s %s %s", method, addr, val))
	_ = os.WriteFile(acpiPath, []byte(cmd), 0644)
	out, _ := os.ReadFile(acpiPath)
	return strings.TrimSpace(string(out))
}

func checkEnv() {
	// 1. 检查 root 权限
	if os.Geteuid() != 0 {
		fmt.Println("请使用 sudo 或 root 权限运行")
		os.Exit(0)
	}

	// 2. 检查 acpi_call 内核模块
	_, err := os.Stat(acpiPath)
	if os.IsNotExist(err) {
		fmt.Printf("未检测到 %s\n", acpiPath)
		fmt.Println("请确保已安装并加载 acpi_call")
		os.Exit(0)
	}
}

// ---------------- 电池 ----------------
func setBattery(mode string) {
	var hex string
	switch mode {
	case "1":
		hex = "0x08"
	case "2":
		hex = "0x18"
	case "3":
		hex = "0x28"
	default:
		fmt.Printf("电池参数错误: %s (有效值: 1|2|3)\n", mode)
		return
	}

	re := regexp.MustCompile(`0x[0-9a-fA-F]+`)
	manual_mode := re.FindString(execACPI("\\_SB.INOU.ECRR", "0x741", ""))
	if manual_mode == "0x0" || manual_mode == "0x80" {
		execACPI("\\_SB.INOU.ECRW", "0x741", "0x81") // 开启手动模式
		time.Sleep(200 * time.Millisecond)
	}

	res := execACPI("\\_SB.INOU.ECRW", "0x7a6", hex)
	fmt.Printf("电池设置 (%s): %s\n", mode, res)
}

// ---------------- 键盘 ----------------
func setKeyboard(mode string) {
	var hex string
	switch mode {
	case "on":
		hex = "0x1"
	case "off":
		hex = "0x3"
	default:
		fmt.Printf("键盘参数错误: %s (有效值: on|off)\n", mode)
		return
	}

	res := execACPI("\\_SB.INOU.ECRW", "0x78c", hex)
	fmt.Printf("键盘设置 (%s): %s\n", mode, res)
}

// ---------------- 读取 ----------------
func getStatus() {
	battery := execACPI("\\_SB.INOU.ECRR", "0x7a6", "")
	keyboard := execACPI("\\_SB.INOU.ECRR", "0x78c", "")
	fmt.Println("状态信息:")
	fmt.Printf("  电池模式: %s (0x8: 100%%, 0x18: ~90%%, 0x28: ~80%%)\n", battery)
	fmt.Printf("  键盘背光: %s (0x1: 开, 0x3: 关)\n", keyboard)
}

// ---------------- CLI ----------------
func usage() {
	fmt.Println(`
wujie14xCC By LongSang01

用法:
  wujie14xCC set [battery|b [1 (100%)|2 (~90%)|3 (~80%)]] [keyboard|k [on|off]]
  wujie14xCC get

示例:
  wujie14xCC set b 2 k off
  wujie14xCC set keyboard on battery 1
  wujie14xCC get
`)
}

func main() {
	checkEnv()

	if len(os.Args) < 2 {
		usage()
		return
	}

	switch os.Args[1] {
	case "set":
		if len(os.Args) < 3 {
			usage()
			return
		}

		// 循环解析后续参数
		for i := 2; i < len(os.Args); i++ {
			arg := strings.ToLower(os.Args[i])

			// 确保参数后面还有值
			if i+1 >= len(os.Args) {
				fmt.Printf("错误: 参数 %s 缺少对应的值\n", arg)
				break
			}

			val := os.Args[i+1]
			switch arg {
			case "battery", "b":
				setBattery(val)
				i++ // 跳过已处理的 value
			case "keyboard", "k":
				setKeyboard(val)
				i++ // 跳过已处理的 value
			default:
				fmt.Printf("未知参数: %s\n", arg)
			}
		}

	case "get":
		getStatus()

	default:
		fmt.Println("未知命令:", os.Args[1])
		usage()
	}
}
