@echo off
REM Vaccination for NotPetya
REM Lauch script with administrative permissions
REM Check you launch script with administrative permissions.	
set textFile=Do not remove this file, vaccinated NotPetya 
net session >nul 2>&1
if %errorLevel% == 0 (
	if exist C:\Windows\perfc (
		echo Computer already vaccinated for NotPetya.
		echo.
	) else (
		echo %textFile% > C:\Windows\perfc
        echo %textFile% > C:\Windows\perfc.dll
        echo %textFile% > C:\Windows\perfc.dat
		
		attrib +R C:\Windows\perfc
        attrib +R C:\Windows\perfc.dll
        attrib +R C:\Windows\perfc.dat
		
		echo Computer vaccinated for current version of NotPetya.
	)
) else (
	echo You must run this script file as Administrator. 
	echo Right-click script file, and then click Run as administrator.
)
  
pause
