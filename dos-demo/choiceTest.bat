@echo off 
choice /c:dme /m defrag,mem,end 
if errorlevel 3 goto defrag （应先判断数值最高的错误码）
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