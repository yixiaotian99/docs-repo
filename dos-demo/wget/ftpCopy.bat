@echo off
set /a nowDay=%date:~0,4%%date:~5,2%%date:~8,2%
@echo %nowDay% %time% ������־ > %slaveEnv%\log\%fileName%.log
set fileName=ftpCopy
set ftpPath=D:\ftpFolder
set projectName=plan-chain
@echo ==================%fileName% ִ���ļ�����

if exist %ftpPath%\%projectName%.7z (
	copy %ftpPath%\%projectName%.7z %slaveEnv%\wput-pre0.6\%projectName%.7z
	cd /d %slaveEnv%\wput-pre0.6
	

	@echo		ɾ��Զ�̷������ϵ���Ŀѹ����
	call %slaveEnv%\bat\wget --http-user=username --http-password=password http://jenkins:8910/job/projectname/build --post-data=delay=0sec
	ping localhost -n 3 > nul

	
) else (
	@echo δ�� %ftpPath%\%projectName%.7z �ҵ���Ŀ
)






