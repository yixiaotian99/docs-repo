@echo off
set /a nowDay=%date:~0,4%%date:~5,2%%date:~8,2%
@echo %nowDay% %time% 操作日志 > %slaveEnv%\log\%fileName%.log
set fileName=ftpCopy
set ftpPath=D:\ftpFolder
set projectName=plan-chain
@echo ==================%fileName% 执行文件穿梭

if exist %ftpPath%\%projectName%.7z (
	copy %ftpPath%\%projectName%.7z %slaveEnv%\wput-pre0.6\%projectName%.7z
	cd /d %slaveEnv%\wput-pre0.6
	

	@echo		删除远程服务器上的项目压缩包
	call %slaveEnv%\bat\wget --http-user=username --http-password=password http://jenkins:8910/job/projectname/build --post-data=delay=0sec
	ping localhost -n 3 > nul

	
) else (
	@echo 未在 %ftpPath%\%projectName%.7z 找到项目
)






