@rem 第四章 批处理中的变量
@rem 批处理中的变量,我把他分为两类,分别为"系统变量"和"自定义变量"
@rem 我们现在来详解这两个变量!
@rem 
@rem 一、系统变量
@rem 他们的值由系统将其根据事先定义的条件自动赋值,也就是这些变量系统已经给他们定义了值,
@rem 不需要我们来给他赋值,我们只需要调用而以!  我把他们全部列出来!
@rem 
@rem %ALLUSERSPROFILE% 本地 返回“所有用户”配置文件的位置。
@rem %APPDATA% 本地 返回默认情况下应用程序存储数据的位置。
@rem %CD% 本地 返回当前目录字符串。
@rem %CMDCMDLINE% 本地 返回用来启动当前的 Cmd.exe 的准确命令行。
@rem %CMDEXTVERSION% 系统 返回当前的“命令处理程序扩展”的版本号。
@rem %COMPUTERNAME%  系统 返回计算机的名称。
@rem %COMSPEC%  系统 返回命令行解释器可执行程序的准确路径。
@rem %DATE%  系统 返回当前日期。使用与 date /t 命令相同的格式。由 Cmd.exe 生成。有关
@rem date 命令的详细信息，请参阅 Date。
@rem %ERRORLEVEL%  系统 返回上一条命令的错误代码。通常用非零值表示错误。
@rem %HOMEDRIVE%  系统 返回连接到用户主目录的本地工作站驱动器号。基于主目录值而设置。用
@rem 户主目录是在“本地用户和组”中指定的。
@rem %HOMEPATH%  系统 返回用户主目录的完整路径。基于主目录值而设置。用户主目录是在“本地用户和组”中指定的。
@rem %HOMESHARE%  系统 返回用户的共享主目录的网络路径。基于主目录值而设置。用户主目录是
@rem 在“本地用户和组”中指定的。
@rem %LOGONSERVER%  本地 返回验证当前登录会话的域控制器的名称。
@rem %NUMBER_OF_PROCESSORS%  系统 指定安装在计算机上的处理器的数目。
@rem %OS%  系统 返回操作系统名称。Windows 2000 显示其操作系统为 Windows_NT。
@rem %PATH% 系统 指定可执行文件的搜索路径。
@rem %PATHEXT% 系统 返回操作系统认为可执行的文件扩展名的列表。
@rem %PROCESSOR_ARCHITECTURE%  系统 返回处理器的芯片体系结构。值：x86 或 IA64 基于
@rem Itanium
@rem %PROCESSOR_IDENTFIER% 系统 返回处理器说明。
@rem %PROCESSOR_LEVEL%  系统 返回计算机上安装的处理器的型号。
@rem %PROCESSOR_REVISION% 系统 返回处理器的版本号。
@rem %PROMPT% 本地 返回当前解释程序的命令提示符设置。由 Cmd.exe 生成。
@rem %RANDOM% 系统 返回 0 到 32767 之间的任意十进制数字。由 Cmd.exe 生成。
@rem %SYSTEMDRIVE% 系统 返回包含 Windows server operating system 根目录（即系统根目录）
@rem 的驱动器。
@rem %SYSTEMROOT%  系统 返回 Windows server operating system 根目录的位置。
@rem %TEMP% 和 %TMP% 系统和用户 返回对当前登录用户可用的应用程序所使用的默认临时目录。
@rem 有些应用程序需要 TEMP，而其他应用程序则需要 TMP。
@rem %TIME% 系统 返回当前时间。使用与 time /t 命令相同的格式。由 Cmd.exe 生成。有关
@rem time 命令的详细信息，请参阅 Time。
@rem %USERDOMAIN% 本地 返回包含用户帐户的域的名称。
@rem %USERNAME% 本地 返回当前登录的用户的名称。
@rem %USERPROFILE% 本地 返回当前用户的配置文件的位置。
@rem %WINDIR% 系统 返回操作系统目录的位置。
@rem 
@rem 这么多系统变量,我们如何知道他的值是什么呢?
@rem 在CMD里输入  echo %WINDIR%
@rem 这样就能显示一个变量的值了!
@rem 举个实际例子,比如我们要复制文件到当前帐号的启动目录里就可以这样
@rem copy d:\1.bat "%USERPROFILE%\「开始」菜单\程序\启动\"
@rem %USERNAME% 本地 返回当前登录的用户的名称。  注意有空格的目录要用引号引起来
@rem 
@rem 另外还有一些系统变量,他们是代表一个意思,或者一个操作!
@rem 他们分别是%0 %1 %2 %3 %4 %5 ......一直到%9 还有一个%*
@rem %0 这个有点特殊,有几层意思,先讲%1-%9的意思.
@rem %1 返回批处理的第一个参数
@rem %2 返回批处理的第二个参数
@rem %3-%9依此推类
@rem 反回批处理参数?到底怎么个返回法?
@rem 我们看这个例子,把下面的代码保存为test.BAT然后放到C盘下
@rem @echo off
@rem echo %1 %2 %3 %4
@rem echo %1
@rem echo %2
@rem echo %3
@rem echo %4
@rem 进入CMD,输入cd c:\
@rem 然后输入 test.bat 我是第一个参数 我是第二个参数  我是第三个参数  我是第四个参数
@rem 注意中间的空格,我们会看到这样的结果:
@rem 我是第一个参数 我是第二个参数 我是第三个参数 我是第四个参数
@rem 我是第一个参数
@rem 我是第二个参数
@rem 我是第三个参数
@rem 我是第四个参数
@rem 对比下代码,%1就是”我是第一个参数”  %2就是”我是第二个参数”
@rem 怎么样理解了吧!
@rem 
@rem 这些%1和%9可以让批处理也能带参数运行,大大提高批处理功能!
@rem 
@rem 还有一个%*  他是什么呢?他的作用不是很大,只是返回参数而已,不过他是一次返回全部参数的值,不用在输入%1 %2来确定一个个的
@rem 
@rem 例子
@rem @echo off
@rem echo %*
@rem 同样保存为test.bat 放到C盘
@rem 进入CMD,输入cd c:\
@rem 然后输入 test.bat 我是第一个参数 我是第二个参数  我是第三个参数  我是第四个参数
@rem 可以看到他一次把全部参数都显示出来了
@rem 
@rem 好现在开始讲那个比较特殊的%0
@rem 
@rem %0  这个不是返回参数的值了,他有两层意思!
@rem 第一层意思:返回批处理所在绝对路径
@rem 例子:
@rem @echo off
@rem echo %0
@rem pause
@rem 保存为test.BAT放在桌面运行,会显示如下结果
@rem "C:\Documents and Settings\Administrator\桌面\test.bat"
@rem 他把当前批处理执行的所在路经打印出来了,这就是返回批处理所在绝对路径的意思
@rem 第二层意思:无限循环执行BAT
@rem 例子:
@rem @echo off
@rem net user
@rem %0
@rem 保存为BAT执行,他就会无限循环执行net user这条命令,直到你手动停止.
@rem 龙卷风补充：其实%0就是第一参数%1前面那个参数，当然就是批处理文件名（包括路径）。
@rem 以上就是批处理中的一些系统变量,另外还有一些变量,他们也表示一些功能,
@rem FOR命令中的那些就是,FOR变量已经说过,就不讲了.
@rem 
@rem 二、自定义变量
@rem 故名思意,自定义变量就是由我们来给他赋予值的变量
@rem 要使用自定义变量就得使用set命令了,看例子.
@rem @echo off
@rem set var=我是值
@rem echo %var%
@rem pause
@rem 保存为BAT执行,我们会看到CMD里返回一个  "我是值"
@rem var为变量名,=号右变的是要给变量的值
@rem 这就是最简单的一种设置变量的方法了
@rem 如果我们想让用户手工输入变量的值,而不是在代码里指定,可以用用set命令的/p参数
@rem 例子:
@rem @echo off
@rem set /p var=请输入变量的值
@rem echo %var%
@rem pause
@rem var变量名  =号右边的是提示语,不是变量的值
@rem 变量的值由我们运行后自己用键盘输入! 



@rem 个人总结信息 
@rem 他们分别是%0 %1 %2 %3 %4 %5 ......一直到%9 还有一个%*
@rem %0 这个有点特殊,有几层意思,先讲%1-%9的意思.
@rem %1 返回批处理的第一个参数
@rem %2 返回批处理的第二个参数
@rem %3-%9依此推类
@echo off
@rem echo %1 %2 %3
@rem echo.
@rem echo "当前批处理绝对路径" %0


@rem 使用%0参数实现死循环
@rem net user
@rem %0


@rem 最常用的等待用户输入值
@rem set /p input=请输入数据
@rem echo %input%


@rem 变量延迟，set帮助命令中的例子 
@rem 一定要注意，在给变量赋值时不能带双引号，不然再引用变量时会变成这样 ""before""=="before"，即使是中文也不用写双引号
set var=before
if "%var%"=="before" (
	set var=after
	echo "%var%"
	if "%var%"=="after" echo "equal"
)
echo .......


setlocal enabledelayedexpansion
set input=before
if "%input%" == "before" (
	set input=after
	echo "!input!"
	if "!input!" == "after" echo "equal"
)

set ch=我自己家
echo %ch%
pause





