
@echo off
:NOWINDIR
set /p UserInputPath= Enter the location of your DNN installation (eg. c:\DNN\):
@set var="%UserInputPath%"


REM IF Not %var:~-1%==\ set var=%var%\
REM  IF NOT EXIST %var% ( 
REM 	echo Path does now exist. Please try again.
Rem  GOTO NOWINDIR
REM )
 
 echo %var%
 echo setting up symbolic links...
 
 REM SETUP APP_CODE
 IF NOT EXIST %var%App_Code ( 
	echo Creating App_Code folder
	mkdir %var%App_Code
 )
 cd App_Code
 FOR /d %%G in (*) DO   mklink /J %var%App_Code\%%G %%G
  FOR %%G in (*) DO   mklink /H %var%App_Code\%%G %%G
 
 REM SETUP DESKTOP MODULES
cd ..\DesktopModules\AgapeConnect
IF NOT EXIST %var%DesktopModules\AgapeConnect ( 
	echo Creating DesktopModules\AgapeConnect folder
	mkdir %var%DesktopModules\AgapeConnect
)
FOR /d %%G in (*) DO  mklink /J %var%DesktopModules\AgapeConnect\%%G %%G

REM SETUP APP_WebRefereces
cd ..\..\App_WebReferences
IF NOT EXIST %var%App_WebReferences ( 
	echo Creating App_Code folder
	mkdir %var%App_WebReferences
)
FOR /d %%G in (*) DO  mklink /J %var%App_WebReferences\%%G %%G

REM SETUP PORTAL DIRECTORY
cd ..\Portals\_default\Skins
FOR /d %%G in (*) DO  mklink /J %var%Portals\_default\Skins\%%G %%G
cd ..\Containers
FOR /d %%G in (*) DO  mklink /J %var%Portals\_default\Containers\%%G %%G
cd ..
FOR %%G in (*) DO  mklink /H %var%Portals\_default\"%%G" "%%G"

cd ../0
IF NOT EXIST %var%Portals\0 ( 
	echo Creating \Portals\0 folder
	mkdir %var%Portals\0
)
FOR %%G in (*) DO  mklink /H %var%Portals\0\%%G %%G

REM SETUP js Directory
cd ../../js
FOR %%G in (*) DO  mklink /H %var%js\%%G %%G
FOR /d %%G in (*) DO  mklink /J %var%js\%%G %%G


REM SETUP bin Directory
cd ../bin
FOR %%G in (*) DO  mklink /H %var%bin\%%G %%G
FOR /d %%G in (*) DO  mklink /J %var%bin\%%G %%G
cd ..

REM SETUP the sso and Scripts Directory
mklink /J %var%sso sso
mklink /J %var%Scripts Scripts

REM SETUP THE MODULE INSTALLERS
copy /Y Install\Module\* %var%Install\Module

REM FINALLY Modify the Web.Config with the CodeSubDirectories
powershell -file InstallScripts\replace.ps1 -webConfig %var%web.config


echo complete. Press any key to exit.
pause > nul

 