@rem 四、参数 /L
@rem FOR /L %%variable IN (start,step,end) DO command [command-parameters]
@rem     该集表示以增量形式从开始到结束的一个数字序列。
@rem     因此，(1,1,5) 将产生序列 1 2 3 4 5，(5,-1,1) 将产生
@rem     序列 (5 4 3 2 1)。
@rem 使 用迭代变量设置起始值 (Start#)，然后逐步执行一组范围的值，直到该值超过所设置的终止值 (End#)。/L 将通过对 Start# 与 End# 进行比较来执行迭代变量。如果 Start# 小于 End#，就会执行该命令。如果迭代变量超过 End#，则命令解释程序退出此循环。还可以使用负的 Step# 以递减数值的方式逐步执行此范围内的值。例如，(1,1,5) 生成序列 1 2 3 4 5，而 (5,-1,1) 则生成序列 (5 4 3 2 1)。语法是：
@rem 看着这说明有点晕吧!咱们看例子就不晕了!
@rem @echo off
@rem for /l %%i in (1,1,5) do @echo %%i
@rem pause
@rem 保存执行看效果,他会打印从1 2 3 4 5  这样5个数字
@rem (1,1,5)这个参数也就是表示从1开始每次加1直到5终止!
@rem 等会晕,就打印个数字有P用...好的满足大家,看这个例子
@rem @echo off
@rem for /l %%i in (1,1,5) do start cmd
@rem pause
@rem 执行后是不是吓了一跳,怎么多了5个CMD窗口,呵呵!如果把那个 (1,1,5)改成 (1,1,65535)会有什么结果,我先告诉大家,会打开65535个CMD窗口....这么多你不死机算你强!
@rem 当然我们也可以把那个start cmd改成md %%i 这样就会建立指定个目录了!!!名字为1-65535
@rem 看完这个被我赋予破坏性质的参数后,我们来看最后一个参数


@rem 这个参数主要是进行数字序列化操作 FOR /L %variable IN (start,step,end) DO command [command-parameters]
@rem 打开5个cmd窗口
@echo off
@rem for /l %%i in (1,1,5) do start cmd 

echo.
@rem 还可以负数递减
for /l %%i in (5,-1,1) do echo %%i

pause 









