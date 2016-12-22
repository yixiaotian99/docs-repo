@rem 4、errorlevel
@rem 程序返回码
@rem echo %errorlevel%
@rem 每个命令运行结束，可以用这个命令行格式查看返回码
@rem 用于判断刚才的命令是否执行成功
@rem 默认值为0，一般命令执行出错会设 errorlevel 为1

@echo off
@rem choice /m "死循环了？"
choice /c:abc /m "Choose an option"
echo %errorlevel%


pause