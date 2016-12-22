@rem 三、参数 /R
@rem FOR /R [[drive:]path] %%variable IN (set) DO command [command-parameters]
@rem     检查以 [drive:]path 为根的目录树，指向每个目录中的
@rem     FOR 语句。如果在 /R 后没有指定目录，则使用当前
@rem 目录。如果集仅为一个单点(.)字符，则枚举该目录树。
@rem 
@rem 递归
@rem 上面我们知道,/D只能显示当前路径下的目录名字,那么现在这个/R也是和目录有关,他能干嘛呢?放心他比/D强大多了!
@rem 他可以把当前或者你指定路径下的文件名字全部读取,注意是文件名字,有什么用看例子!
@rem 请注意2点：
@rem     1、set中的文件名如果含有通配符(？或*)，则列举/R参数指定的目录及其下面的所用子目录中与set相符合的所有文件，无相符文件的目录则不列举。
@rem     2、相反，如果set中为具体文件名，不含通配符，则枚举该目录树（即列举该目录及其下面的所有子目录），而不管set中的指定文件是否存在。这与前面所说的单点（.）枚举目录树是一个道理，单点代表当前目录，也可视为一个文件。
@rem 例：
@rem @echo off
@rem for /r c:\ %%i in (*.exe) do echo %%i
@rem pause
@rem 咱们把这个BAT保存到D盘随便哪里然后执行,我会就会看到,他把C盘根目录,和每个目录的子目录下面全部的EXE文件都列出来了!!!!
@rem 例：
@rem @echo off
@rem for /r %%i in (*.exe) do @echo %%i
@rem pause
@rem    参数不一样了吧!这个命令前面没加那个C:\也就是搜索路径,这样他就会以当前目录为搜索路径,
@rem 比如你这个BAT你把他放在d:\test目录下执行,那么他就会把D:\test目录和他下面的子目录的全部EXE文件列出来!!!
@rem 例：
@rem @echo off
@rem for /r c:\ %%i in (boot.ini) do echo %%i
@rem pause
@rem 运行本例发现枚举了c盘所有目录，为了只列举boot.ini存在的目录，可改成下面这样：
@rem @echo off
@rem for /r c:\ %%i in (boot.ini) do if exist %%i echo %%i
@rem pause
@rem 用这条命令搜索文件真不错。。。。。。
@rem 这个参数大家应该理解了吧!还是满好玩的命令!





@rem 前面的学习中for /d 只能列举目录，而for /r 即可以列举目录，也可以列举文件
@echo off
for /r D:\KMPlayer %%i in (*.exe) do (
	echo "只列举扩展名是.exe的文件:" + %%i
)

echo.
@rem 集合为文件名，则无论文件是否存在均会列举指定目录所有扩展名文件,注意是指定扩展名
for /r D:\KMPlayer %%i in (abcadfafddaf.txt) do (
	echo "所有.txt文件：" + %%i
)

echo.
@rem 
for /r D:\KMPlayer %%i in (*.*) do (
	echo "所有文件：" + %%i
)

pause 










