import os
import time
import glob
from datetime import datetime

LOG_FILE = "battery_log.csv"
INTERVAL = 1  # 秒


def find_battery_path():
    """自动查找电池目录，如 /sys/class/power_supply/BAT0"""
    batteries = glob.glob("/sys/class/power_supply/BAT*")
    if not batteries:
        raise RuntimeError("未找到电池设备路径 (/sys/class/power_supply/BAT*)")
    return batteries[0]


def read_value(path):
    """读取 sysfs 数值"""
    try:
        with open(path, "r") as f:
            return f.read().strip()
    except FileNotFoundError:
        return None


def get_battery_info(bat_path):
    """
    获取:
    - capacity: 电量百分比
    - current: 电流 (mA)
    """
    capacity = read_value(os.path.join(bat_path, "capacity"))

    current_now = read_value(os.path.join(bat_path, "current_now"))

    # 通常单位是 µA，转换为 mA
    current_ma = int(current_now) / 1000.0

    return capacity, current_ma


def init_log():
    """初始化日志文件"""
    if not os.path.exists(LOG_FILE):
        with open(LOG_FILE, "w") as f:
            f.write("timestamp,capacity_percent,current_mA\n")


def main():
    bat_path = find_battery_path()
    print(f"检测到电池路径: {bat_path}")
    print(f"开始记录到: {LOG_FILE}")

    init_log()

    while True:
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        try:
            capacity, current_ma = get_battery_info(bat_path)

            if current_ma is None:
                current_str = "N/A"
            else:
                current_str = f"{current_ma:.2f}"

            line = f"{timestamp},{capacity},{current_str}\n"

            with open(LOG_FILE, "a") as f:
                f.write(line)

            print(line.strip())

        except Exception as e:
            error_line = f"{timestamp},ERROR,{e}\n"
            with open(LOG_FILE, "a") as f:
                f.write(error_line)
            print(error_line.strip())

        time.sleep(INTERVAL)


if __name__ == "__main__":
    main()
