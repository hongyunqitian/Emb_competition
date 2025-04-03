int ledPin=10;//定义数字10接口

void setup()
{
    pinMode(ledPin,OUTPUT);//定义小灯接口为输出接口
    digitalWrite(ledPin,LOW);//关闭
}

void loop()
{
    digitalWrite(ledPin,HIGH);//闭合
    delay(1000);//延时1秒
    digitalWrite(ledPin,LOW);//关闭
    delay(1000);//延时1秒
}
