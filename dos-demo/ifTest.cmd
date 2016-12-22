@rem 15、IF
@rem IF 条件判断语句，语法格式如下：
@rem IF [NOT] ERRORLEVEL number command
@rem IF [NOT] string1==string2 command
@rem IF [NOT] EXIST filename command
@rem 下面逐一介绍，更详细的分析请看后面章节。
@rem 
@rem (1) IF [NOT] ERRORLEVEL number command
@rem IF ERRORLEVEL这个句子必须放在某一个命令的后面，执行命令后由IF ERRORLEVEL 来判断命令的返回值。
@rem Number的数字取值范围0~255，判断时值的排列顺序应该由大到小。返回的值大于等于指定的值时，条件成立
@rem 例：
@rem @echo off
@rem dir c:
@rem rem退出代码为>=1就跳至标题1处执行，>=0就跳至标题0处执行
@rem IF ERRORLEVEL 1 goto 1
@rem IF ERRORLEVEL 0 goto 0
@rem Rem 上面的两行不可交换位置，否则失败了也显示成功。
@rem :0
@rem echo 命令执行成功！
@rem Rem 程序执行完毕跳至标题exit处退出
@rem goto exit
@rem :1
@rem echo 命令执行失败！
@rem Rem 程序执行完毕跳至标题exit处退出
@rem goto exit
@rem :exit
@rem pause
@rem 运行显示：命令执行成功！
@rem (2) IF [NOT] string1==string2 command
@rem string1和string2都为字符的数据，英文内字符的大小写将看作不同，这个条件中的等于号必须是两个（绝对相等的意思）
@rem 条件相等后即执行后面的command
@rem 检测当前变量的值做出判断，为了防止字符串中含有空格，可用以下格式
@rem if [NOT] {string1}=={string2} command
@rem if [NOT] [string1]==[string2] command
@rem if [NOT] "string1"=="string2" command
@rem 这种写法实际上将括号或引号当成字符串的一部分了，只要等号左右两边一致就行了，比如下面的写法就不行：
@rem if {string1}==[string2] command
@rem 
@rem (3) IF [NOT] EXIST filename command
@rem EXIST filename为文件或目录存在的意思
@rem echo off
@rem IF EXIST autoexec.bat echo 文件存在！
@rem IF not EXIST autoexec.bat echo 文件不存在！
@rem 这个批处理大家可以放在C盘和D盘分别执行，看看效果


@rem 第一个测试errorlevel
@rem 使用errorlevel必须是在某条命令的后面，且errorlevel必须按由大到小顺序
@rem dir 
@rem echo %errorlevel%
@rem echo.
@rem dir /dd
@rem echo %errorlevel%

@rem 返回结果如下：
@rem F:\downloads>echo 0
@rem 0
@rem F:\downloads>echo.
@rem F:\downloads>dir /dd
@rem 参数格式不正确 - "dd"。
@rem F:\downloads>echo 1
@rem 1

@rem 第二个比较两个字符串相等，通常就是加双引号即可，
@rem set aa="测试"
@rem set bb="测试"
@rem if %aa%==%bb% echo "相等"
@rem if not %aa%==%bb% echo "不相等"

@rem 两边要么全有双引号，要么全没有，因为字符串比较是把符号也进行比较
@rem if %aa%=="%bb%" echo "相等"
@rem if not %aa%=="%bb%" echo "也不相等"

@rem 第三个判断文件是否存在,靠，MD，else必须要和if或者)在同一行上，否则会提示错误
if not exist ifTest.cmd (echo "不存在"
) else ( echo "存在")


pause



