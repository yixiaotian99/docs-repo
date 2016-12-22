@echo off
echo start begin
start /b .\pingTest.bat
echo start end

@rem return back
@rem start begin
@rem start end
@rem F:\downloads>ping 127.0.0.1 -n 5

@rem 正在 Ping 127.0.0.1 具有 32 字节的数据:
@rem 来自 127.0.0.1 的回复: 字节=32 时间<1ms TTL=64
@rem 来自 127.0.0.1 的回复: 字节=32 时间<1ms TTL=64
@rem 来自 127.0.0.1 的回复: 字节=32 时间<1ms TTL=64
@rem 来自 127.0.0.1 的回复: 字节=32 时间<1ms TTL=64

