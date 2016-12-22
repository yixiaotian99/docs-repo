if %1==1 (
	cd /d D:\Jenkins\wput-pre0.6
	wput.exe ftp://user:password@ip:port/file -u -t 3 -nv
)  else (
	@echo 未获取到任何单体/连锁标志 !!!
)


