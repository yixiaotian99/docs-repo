@rem 16、setlocal 与 变量延迟
@rem 本条内容引用[英雄出品]的批处理教程：
@rem 要想进阶，变量延迟是必过的一关！所以这一部分希望你能认真看。
@rem 为了更好的说明问题，我们先引入一个例子。
@rem 例1:
@rem @echo off
@rem set a=4
@rem set a=5 & echo %a%
@rem pause
@rem 结果：4
@rem 解说：为什么是4而不是5呢？在echo之前明明已经把变量a的值改成5了？
@rem 让我们先了解一下批处理运行命令的机制：
@rem 批 处理读取命令时是按行读取的（另外例如for命令等，其后用一对圆括号闭合的所有语句也当作一行），在处理之前要完成必要的预处理工作，这其中就包括对该 行命令中的变量赋值。我们现在分析一下例1，批处理在运行到这句“set a=5 & echo %a%”之前，先把这一句整句读取并做了预处理——对变量a赋了值，那么%a%当然就是4了！（没有为什么，批处理就是这样做的。）
@    rem er而为了能够感知环境变量的动态变化，批处理设计了变量延迟。简单来说，在读取了一条完整的语句之后，不立即对该行的变量赋值，而会在某个单条语句执行之前再进行赋值，也就是说“延迟”了对变量的赋值。

@rem 那么如何开启变量延迟呢？变量延迟又需要注意什么呢？举个例子说明一下：
@rem 例2:
@rem @echo off
@rem setlocal enabledelayedexpansion
@rem set a=4
@rem set a=5 & echo !a!
@rem pause 
@rem 结果：5
@rem 解说：启动了变量延迟，得到了正确答案。变量延迟的启动语句是“setlocal enabledelayedexpansion”，并且变量要用一对叹号“!!”括起来（注意要用英文的叹号），否则就没有变量延迟的效果。
@rem 分析一下例2，首先“setlocal enabledelayedexpansion”开启变量延迟，然后“set a=4”先给变量a赋值为
@rem 4，“set a=5 & echo !a!”这句是给变量a赋值为5并输出（由于启动了变量延迟，所以批处理能够感知到动态变化，即不是先给该行变量赋值，而是在运行过程中给变量赋值，因此此时a的值就是5了）。
@rem 再举一个例子巩固一下。
@rem 例3:
@rem @echo off
@rem setlocal enabledelayedexpansion
@rem for /l %%i in (1,1,5) do (
@rem set a=%%i
@rem echo !a!
@rem )
@rem pause
@rem 结果：
@rem 1
@rem 2
@rem 3
@rem 4
@rem 5
@rem 解说：本例开启了变量延迟并用“!!”将变量扩起来，因此得到我们预期的结果。如果不用变量延迟会出现什
@rem 么结果呢？结果是这样的：
@rem ECHO 处于关闭状态。
@rem ECHO 处于关闭状态。
@rem ECHO 处于关闭状态。
@rem ECHO 处于关闭状态。
@rem ECHO 处于关闭状态。
@rem 即没有感知到for语句中的动态变化。
@rem    mre提示：在没有开启变量延迟的情况下，某条命令行中的变量改变，必须到下一条命令才能体现。这一点也可以加以利用，看例子。
@rem 例：交换两个变量的值，且不用中间变量
@rem @echo off
@rem ::目的：交换两个变量的值，但是不使用临时变量
@rem ::Code by JM 2007-1-24 [email=CMD@XP]CMD@XP[/email]
@rem ::出处：http://www.cn-dos.net/forum/viewthread.php?tid=27078
@rem set var1=abc
@rem set var2=123
@rem echo 交换前： var1=%var1% var2=%var2%
@rem set var1=%var2%& set var2=%var1%
@rem echo 交换后： var1=%var1% var2=%var2%
@rem pause


@rem 默认情况下，dos对变量进行预处理
@echo off 
set a=4
set a=5 
echo a=%a%
echo.

set b=4
set b=5 & echo b=%b%
echo b=%b%

@rem  返回结果如下，即同一行变量的赋值dos不会立即感应到，dos会先预处理，到下一行命令时才得到正确值
@rem 5
@rem 4
@rem 5
@rem 请按任意键继续. . .

@rem 开启变量延迟，并且使用英文的感叹号
setlocal enabledelayedexpansion
set c=4
set c=5 & echo c=!c!

@rem 使用for命令打印从1到5的数字,注意这里变量必须是 %%k 不能是%k
@rem FOR /L %variable IN (start,step,end) DO command [command-parameters]
@rem     该集表示以增量形式从开始到结束的一个数字序列。因此，(1,1,5)将产生序列
@rem     1 2 3 4 5，(5,-1,1)将产生序列(5 4 3 2 1)
setlocal enabledelayedexpansion
for /l %%k in (1,1,5) do (
	set mm=%%k  
	echo mm=!mm!
)


pause












