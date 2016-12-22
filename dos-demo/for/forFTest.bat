@rem 五、参数 /F
@rem \迭代及文件解析
@    rem 使用文件解析来处理命令输出、字符串及文件内容。使用迭代变量定义要检查的内容或字符串，并使用各种options选项进一步修改解析方式。使用options令牌选项指定哪些令牌应该作为迭代变量传递。请注意：在没有使用令牌选项时，/F 将只检查第一个令牌。
@    rem 文件解析过程包括读取输出、字符串或文件内容，将其分成独立的文本行以及再将每行解析成零个或更多个令牌。然后通过设置为令牌的迭代变量值，调用 for 循环。默认情况下，/F 传递每个文件每一行的第一个空白分隔符号。跳过空行。
@rem 
@rem 详细的帮助格式为：
@rem FOR /F ["options"] %%variable IN (file-set) DO command [command-parameters]
@rem FOR /F ["options"] %%variable IN ("string") DO command [command-parameters]
@rem FOR /F ["options"] %%variable IN ('command') DO command [command-parameters]
@rem     带引号的字符串"options"包括一个或多个
@rem     指定不同解析选项的关键字。这些关键字为:
@rem         eol=c           - 指一个行注释字符的结尾(就一个)(备注：默认以使用；号为行首字符的为注释行)
@rem         skip=n          - 指在文件开始时忽略的行数，(备注：最小为1，n可以大于文件的总行数，默认为1。)
@rem         delims=xxx      - 指分隔符集。这个替换了空格和跳格键的默认分隔符集。
@rem         tokens=x,y,m-n  - 指每行的哪一个符号被传递到每个迭代
@rem                           的 for 本身。这会导致额外变量名称的分配。m-n
@rem                           格式为一个范围。通过 nth 符号指定 mth。如果
@rem                           符号字符串中的最后一个字符星号，
@rem                           那么额外的变量将在最后一个符号解析之后
@rem                           分配并接受行的保留文本。经测试，该参数最多
@rem                           只能区分31个字段。(备注：默认为1，则表示只显示分割后的第一列的内容，最大是31，超过最大则无法表示)
@rem         usebackq        - 使用后引号（键盘上数字1左面的那个键`）。
@rem                         未使用参数usebackq时：file-set表示文件，但不能含有空格
@rem                             双引号表示字符串，即"string"
@rem                             单引号表示执行命令，即'command'
@rem                           使用参数usebackq时：file-set和"file-set"都表示文件
@rem                           当文件路径或名称中有空格时，就可以用双引号括起来
@rem                             单引号表示字符串，即'string'
@rem                             后引号表示命令执行，即`command`
@rem 
@rem 以上是用for /?命令获得的帮助信息，直接复制过来的，括号中的备注为我添加的说明。
@rem 晕惨了!我这就举个例子帮助大家来理解这些参数!
@rem 
@rem For命令例1：****************************************
@rem @echo off
@rem rem 首先建立临时文件test.txt
@rem echo ;注释行,这是临时文件,用完删除 >test.txt
@rem echo 11段 12段 13段 14段 15段 16段 >>test.txt
@rem echo 21段,22段,23段,24段,25段,26段 >>test.txt
@rem echo 31段-32段-33段-34段-35段-36段 >>test.txt
@rem FOR /F "eol=; tokens=1,3* delims=,- " %%i in (test.txt) do echo %%i %%j %%k
@rem Pause
@rem Del test.txt
@rem 运行显示结果：
@rem 11段 13段 14段 15段 16段
@rem 21段 23段 24段,25段,26段
@rem 31段 33段 34段-35段-36段
@rem 请按任意键继续. . .
@rem 为什么会这样?我来解释：
@rem eol=;          分号开头的行为注释行
@rem tokens=1,3*    将每行第1段,第3段和剩余字段分别赋予变量%%i，%%j，%%k
@rem delims=,-     （减号后有一空格）以逗号减号和空格为分隔符，空格必须放在最后
@rem 
@rem For命令例2：****************************************
@rem @echo off
@rem FOR /F "eol= delims=" %%i in (test.txt) do echo %%i
@rem Pause
@rem 运行将显示test.txt全部内容，包括注释行，不解释了哈。
@rem 
@rem For命令例3：****************************************
@rem 另外/F参数还可以以输出命令的结果看这个例子
@rem @echo off
@rem FOR /F "delims=" %%i in ('net user') do @echo %%i
@rem pause
@    rem 这样你本机全部帐号名字就出来了把扩号内的内容用两个单引号引起来就表示那个当命令执行,FOR会返回命令的每行结果,加那个"delims=" 是为了让我空格的行能整行显示出来,不加就只显示空格左边一列!



@echo off
@rem 首先建立临时文件test.txt
@rem echo ;注释行,这是临时文件,用完删除 >test.txt
@rem echo 我是废话行 >>test.txt
@rem echo 11段 12段 13段 14段 15段 16段 >>test.txt
@rem echo 21段,22段,23段,24段,25段,26段 >>test.txt
@rem echo 31段-32段-33段-34段-35段-36段 >>test.txt
@rem for /f "eol=; skip=2 tokens=1,3* delims=,- " %%i in (.\test.txt) do (
@rem 	echo "显示变量i=" + %%i + " ,隐藏变量=" + %%j +" , " + %%k
@rem )

@rem 分析上述文件
@rem eol=; 说明分号开头的行为注释行，循环时自动忽略此行，不再进行迭代，默认为分号
@rem skip=2 指在文件开始时忽略的行数，不管是否注释，反正从文件第一行开始
@rem tokens=1,3*  获取文件中的第1、3段和后面所有段，%i 在 for 语句中显式声明，%j 和 %k 是通过 tokens= 选项隐式声明的，不能使用其它字母代替！（重要）
@rem delims=,- 注意，一定要注意此参数放在最后面，因为空格也是分隔符，如果写成"eol=; skip=2 delims=,- tokens=1,3* " 的话，他不会把空格也给你当做分隔符，只会把delims与tokens参数中的空格当成命令了！！（重要）获取满足条件第一列，如果有空行就只显示最左侧内容，参数最后一个例子。


@rem 显示文件中所有内容，包含注释行
@rem echo ;注释行,这是临时文件,用完删除 >test.txt
@rem echo 我是废话行 >>test.txt
@rem echo. >>test.txt
@rem echo 11段 12段 13段 14段 15段 16段 >>test.txt
@rem echo 21段,22段,23段,24段,25段,26段 >>test.txt
@rem echo 31段-32段-33段-34段-35段-36段 >>test.txt
@rem for /f "eol= delims=" %%i in (test.txt) do echo %%i


@rem 集合使用命令代替，使用单引号
@rem 也是非常重要的一点，使用"delims="，如果没有此选项则只会打印出满足条件最左侧一列
net user	
echo.
for /f "delims=" %%i in ('net user') do echo %%i

@rem F:\downloads\for>F:\downloads\for\forFTest.bat
@rem \\SJW-PC 的用户帐户
@rem -------------------------------------------------------------------------------
@rem Administrator            Guest                    sunjinwei
@rem 命令成功完成。
@rem 
@rem \\SJW-PC
@rem -------------------------------------------------------------------------------
@rem Administrator

pause










