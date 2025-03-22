import sensor, image, time
from pyb import UART, LED

# 初始化
sensor.reset()
sensor.set_pixformat(sensor.RGB565)
sensor.set_framesize(sensor.QQVGA)  # 160x120
sensor.skip_frames(time=2000)

# 设置UART
uart = UART(1, 115200)
red_led = LED(1)

# 发送数据函数 - 确保安全传输
def send_bytes(data):
    if isinstance(data, bytes):
        uart.write(data)
    elif isinstance(data, int):
        uart.write(bytes([data]))
    elif isinstance(data, list):
        uart.write(bytes(data))
    elif isinstance(data, str):
        uart.write(data.encode())
    else:
        print("无法发送类型:", type(data))

# 单次图像发送
print("准备拍照...")
time.sleep(1)

# 拍照并压缩
img = sensor.snapshot()
jpeg = img.compress(quality=40)
size = len(jpeg)
print("图像大小:", size, "字节")

# 发送帧头
send_bytes(b'\x55\xAA')

# 发送大小 (单字节发送避免类型错误)
send_bytes(size & 0xFF)
send_bytes((size >> 8) & 0xFF)
send_bytes((size >> 16) & 0xFF)
send_bytes((size >> 24) & 0xFF)

# 发送图像数据 (直接发送，不分块)
uart.write(jpeg)

# 发送帧尾
send_bytes(b'\xAA\x55')

red_led.toggle()
print("图像已发送")
