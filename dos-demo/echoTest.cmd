@rem 2、ECHO 和 @
@rem @字符放在命令前将关闭该命令回显，无论此时echo是否为打开状态。
@rem echo命令的作用列举如下：
@rem （1）打开回显或关闭回显功能
@rem     格式:echo [{ on|off }]
@rem     如果想关闭“ECHO OFF”命令行自身的显示，则需要在该命令行前加上“@”。
@rem （2）显示当前ECHO设置状态
@rem     格式:echo
@rem （3）输出提示信息 
@rem     格式：ECHO 信息内容
@rem     上述是ECHO命令常见的三种用法，也是大家熟悉和会用的，但作为DOS命令淘金者你还应该知道下面的技巧：
@rem （4）关闭DOS命令提示符 
@rem     在DOS提示符状态下键入ECHO OFF，能够关闭DOS提示符的显示使屏幕只留下光标，直至键入ECHO ON，提示符才会重新出现。
@rem （5）输出空行，即相当于输入一个回车 
@rem     格式：ECHO．
@rem     值得注意的是命令行中的“．”要紧跟在ECHO后面中间不能有空格，否则“．”将被当作提示信息输出到屏幕。另外“．”可以用，：；”／[\]＋等任一符号替代。
@rem     命令ECHO．输出的回车，经DOS管道转向可以作为其它命令的输入，比如echo.|time即相当于在TIME命令执行后给出一个回车。所以执行时系统会在显示当前时间后，自动返回到DOS提示符状态
@rem （6）答复命令中的提问 
@rem     格式：ECHO 答复语|命令文件名
@rem 上述格式可以用于简化一些需要人机对话的命令（如：CHKDSK／F；FORMAT Drive:；del *.*）的操作，它是通过DOS管道命令把ECHO命令输出的预置答复语作为人机对话命令的输入。下面的例子就相当于在调用的命令出现人机对话时输入“Y”回车：
@rem C:>ECHO Y|CHKDSK/F
@rem C:>ECHO Y|DEL A :*.*
@rem （7）建立新文件或增加文件内容 
@rem 格式：ECHO 文件内容>文件名
@rem       ECHO 文件内容>>文件名
@rem 例如：
@rem C:>ECHO @ECHO OFF>AUTOEXEC.BAT建立自动批处理文件
@rem C:>ECHO C:\CPAV\BOOTSAFE>>AUTOEXEC.BAT向自动批处理文件中追加内容
@rem C:>TYPE AUTOEXEC.BAT显示该自动批处理文件
@rem @ECHO OFF
@rem C:\CPAV\BOOTSAFE
@rem （8）向打印机输出打印内容或打印控制码 
@rem 格式：ECHO 打印机控制码>;PRN
@rem       ECHO 打印内容>;PRN
@rem 下面的例子是向M－1724打印机输入打印控制码。＜Alt＞156是按住Alt键在小键盘键入156，类似情况依此类推：
@rem C:>ECHO +156+42+116>;PRN（输入下划线命令FS＊t）
@rem C:>ECHO [email=+155@]+155@>;PRN[/email]（输入初始化命令ESC@）
@rem C:>ECHO.>;PRN（换行）
@rem （9）使喇叭鸣响 
@rem C:>ECHO ^G
@rem “^G”是在dos窗口中用Ctrl＋G或Alt＋007输入，
@rem 输入多个^G可以产生多声鸣响。使用方法是直接将其加入批处理文件中或做成批处理文件调用。
@rem 这里的“^G”属于特殊符号的使用，请看本文后面的章节

@echo off
@echo 关闭echo回显功能
echo.

@echo 显示当前echo状态
echo 
echo. 

echo on 
echo y|choice /m "答复命令中的提问，格式ECHO 答复语|命令文件名"
echo off
echo.



@echo 建立新文件或增加文件内容
echo on
echo "创建新文件并添加内容，如果文件存在则覆盖">newfile.bat
type newfile.bat 
echo "追加文件内容，若不存在文件则创建，存在文件直接追加">>secfile.cmd
type secfile.cmd



pause



