import sensor, image, time
from pyb import UART, LED,delay

# 初始化
sensor.reset()
sensor.set_pixformat(sensor.RGB565)
sensor.set_framesize(sensor.QQVGA)
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

# 主循环
while True:
    char = uart.read(1)
    if char and char == b'1':  # 先检查 char 是否为 None
        img = sensor.snapshot()
        jpeg = img.compress(quality=40)
        size = int(len(jpeg))  # 确保 size 是整数
        print("图像大小:", size, "字节")

        send_bytes(b'\x55\xAA')
#        send_bytes(size & 0xFF)
#        send_bytes((size >> 8) & 0xFF)
#        send_bytes((size >> 16) & 0xFF)
#        send_bytes((size >> 24) & 0xFF)
        uart.write(jpeg)
        send_bytes(b'\xAA\x55')

        red_led.toggle()
        print("图像已发送")
        char='0'

    delay(1)
