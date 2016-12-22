@rem 在文件中搜索字符串。
@rem FIND [/V] [/C] [/N] [/I] [/OFF[LINE]] "string" [[drive:][path]filename[ ...]]
@rem   /V        显示所有未包含指定字符串的行。
@rem   /C        仅显示包含字符串的行数。
@rem   /N        显示行号。
@rem   /I        搜索字符串时忽略大小写。
@rem   /OFF[LINE] 不要跳过具有脱机属性集的文件。
@rem   "string"   指定要搜索的文字串，
@rem   [drive:][path]filename
@rem         指定要搜索的文件。
@rem 如果没有指定路径，FIND 将搜索键入的或者由另一命令产生的文字。
@rem Find常和type命令结合使用
@rem Type [drive:][path]filename | find "string" [>tmpfile] #挑选包含string的行
@rem Type [drive:][path]filename | find /v "string" #剔除文件中包含string的行
@rem Type [drive:][path]filename | find /c #显示文件行数 
@rem 以上用法将去除find命令自带的提示语（文件名提示）

@rem 例：
@rem @echo off
@rem echo 111 >test.txt
@rem echo 222 >>test.txt
@rem find "111" test.txt
@rem del test.txt
@rem pause
@rem 运行显示如下：
@rem ---------- TEST.TXT
@rem 111
@rem 请按任意键继续. . .

@rem 例：
@rem @echo off
@rem echo 111 >test.txt
@rem echo 222 >>test.txt
@rem type test.txt|find "111" 
@rem del test.txt
@rem pause
@rem 运行显示如下：
@rem 111
@rem 请按任意键继续. . .


@rem 注意： find 后面的字符串必须要加双引号
echo 111>test.txt
echo 222>>test.txt 
echo 444333>>test.txt 
echo.
@rem find "111" .\test.txt


@rem return 
@rem F:\downloads>find /n  "444" .\test.txt
@rem ---------- .\TEST.TXT
@rem [3]444333

pause










