@rem 一、基本格式
@rem FOR %%variable IN (set) DO command [command-parameters]
@rem   %%variable  指定一个单一字母表示可替换的参数。
@rem   (set)      指定一个或一组文件。可以使用通配符。
@rem   command    指定对每个文件执行的命令。
@rem   command-parameters
@rem              为特定命令指定参数或命令行开关。
@rem 
@rem 
@rem 
@rem 参数:FOR有4个参数 /d   /l   /r   /f   他们的作用我在下面用例子解释
@rem 现在开始讲每个参数的意思
@rem 
@rem 二、参数 /d
@rem FOR /D %%variable IN (set) DO command [command-parameters]
@rem     如果集中包含通配符，则指定与目录名匹配，而不与文件
@rem     名匹配。
@rem 如果 Set (也就是我上面写的 "相关文件或命令") 包含通配符（* 和 ?），将对与 Set 相匹配的每个目录（而不是指定目录中的文件组）执行指定的 Command。
@rem 这个参数主要用于目录搜索,不会搜索文件,看这样的例子
@rem @echo off
@rem for /d %%i in (c:\*) do echo %%i
@rem pause
@rem 运行会把C盘根目录下的全部目录名字打印出来,而文件名字一个也不显示!
@rem 在来一个,比如我们要把当前路径下文件夹的名字只有1-3个字母的打出来
@rem @echo off
@rem for /d %%i in (???) do echo %%i
@rem pause
@rem 这样的话如果你当前目录下有目录名字只有1-3个字母的,就会显示出来,没有就不显示了
@rem 这里解释下*号和?号的作用,*号表示任意N个字符,而?号只表示任意一个字符
@rem 知道作用了,给大家个思考题目!
@rem @echo off
@rem for /d %%i in (window?) do echo %%i
@rem pause
@rem 保存到C盘下执行,会显示什么呢?自己看吧! 显示：windows
@rem /D参数只能显示当前目录下的目录名字,这个大家要注意!

@rem 对一组文件中的每一个文件执行某个特定命令。
@rem 
@rem FOR %variable IN (set) DO command [command-parameters]
@rem 
@rem   %variable  指定一个单一字母可替换的参数。
@rem   (set)      指定一个或一组文件。可以使用通配符。
@rem   command    指定对每个文件执行的命令。
@rem   command-parameters
@rem              为特定命令指定参数或命令行开关。
@rem 
@rem 在批处理程序中使用 FOR 命令时，指定变量请使用 %%variable
@rem 而不要用 %variable。变量名称是区分大小写的，所以 %i 不同于 %I.

@rem 使用for循环的/d显示目录下的文件夹，而非文件
@rem 使用变量 %%i 迭代，双感叹号+单字母,一定注意是单个字母，双字母不可以
@echo off
for /d %%m in (D:\KMPlayer\*) do (
	echo %%m
)

echo.
@rem 注意通配符的用法，星号代表任意个字符，问题?代表一个字母
@rem 打印出 D:\KMPlayer\ 下只有4个字符的所有文件夹打印出来
for /d %%n in (D:\KMPlayer\????) do (
	echo %%n
)

pause
