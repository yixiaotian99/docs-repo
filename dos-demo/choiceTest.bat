@echo off 
choice /c:dme /m defrag,mem,end 
if errorlevel 3 goto defrag ��Ӧ���ж���ֵ��ߵĴ����룩
if errorlevel 2 goto mem 
if errotlevel 1 goto end 

:defrag 
c:\dos\defrag 
goto end 
:mem 
mem 
goto end 
:end 
echo good bye

pause