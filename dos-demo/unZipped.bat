@echo off
set /a nowDay=%date:~0,4%%date:~5,2%%date:~8,2%
@echo %nowDay% %time% 操作日志 > %slaveEnv%\log\%fileName%.log

@rem plan deploy prepare dir
set ftpPath=D:\ftpFolder
set zipDir="C:\Program Files\7-Zip"
set unZipDir=D:\plan
set projectName=plan-chain
set fileName=unZipped
set bakDir=D:\backup

@echo ==================%fileName% 执行解压

if not exist %bakDir%\%nowDay% (
	md %bakDir%\%nowDay%
	md %bakDir%\%nowDay%\bak
	md %bakDir%\%nowDay%\new
)


if exist %unZipDir%  rd /s /q %unZipDir%
ping localhost -n 10 > nul
for /r %ftpPath% %%i in (*.rar,soa-service*.jar,*.7z,*.zip) do (
	if %%~ni==%projectName% (
		echo %%~ni
	)
)

if not exist %unZipDir% mkdir %unZipDir%

if exist %unZipDir% (
	@echo		开始解压文件到指定 %unZipDir% 目录,请稍后.... 
	for /r %ftpPath% %%i in (*.rar,soa-service*.jar,*.7z,*.zip) do (
		if %%~ni==%projectName% %zipDir%\7z x %%i -o%unZipDir%\ -y -r  >> %slaveEnv%\log\%fileName%.log
	)


	@echo		备份 %ftpPath%\%projectName%.7z 到目录 %bakDir%\%nowDay%\new\ 
	if exist %ftpPath%\%projectName%.7z (
		 copy %ftpPath%\%projectName%.7z "%bakDir%\%nowDay%\new\%projectName%-%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%.7z"
	)  
	
) else (
	set nextStep=no
	@echo		未在 %unZipDir% 找到可以部署的项目.... 
)




