@echo off
REM Vaccination for Bad Rabbit
REM Lauch script with administrative permissions
REM Check you launch script with administrative permissions.	
set textFile=Do not remove this file, vaccinated Bad Rabbit 
net session >nul 2>&1
if %errorLevel% == 0 (
	if exist C:\Windows\infpub.dat  (
		echo Computer already vaccinated for Bad Rabbit.
		echo.
	) else (
		echo %textFile% > C:\Windows\infpub.dat
		echo %textFile% > C:\Windows\dispci.exe
		echo %textFile% > C:\Windows\cscc.dat

		attrib +R C:\Windows\infpub.dat
		attrib +R C:\Windows\dispci.exe
		attrib +R C:\Windows\cscc.dat
		
		echo Computer vaccinated for current version of Bad Rabbit.
	)
) else (
	echo You must run this script file as Administrator. 
	echo Right-click script file, and then click Run as administrator.
)
  
pause
