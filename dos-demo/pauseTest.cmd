@rem 3、PAUSE
@rem PAUSE，玩游戏的人都知道，暂停的意思
@rem 在这里就是停止系统命令的执行并显示下面的内容。
@rem 例：
@rem PAUSE
@rem 运行显示：
@rem 请按任意键继续. . .
@rem 要显示其他提示语，可以这样用：
@rem Echo 其他提示语 & pause > nul



echo "普通的暂停命令使用pause"
pause 


echo "使用其他提示语"
echo "替换默认的提示语" & pause > nul