:MENU
@ECHO OFF
mode 32,13
ECHO          SCUMMVM-BUILDER
ECHO.
ECHO ................................
ECHO.
ECHO    * Bubble Conversion Tools *
ECHO.
ECHO      1 - Input Folder
ECHO      2 - Image Converter
ECHO      3 - Create VPK
ECHO      4 - Define Folder Path
ECHO      5 - Wipe Input/Contents
ECHO.
SET /P M=Type # or 0 for EXIT :
IF %M%==0 GOTO EOF
IF %M%==1 GOTO INPF
IF %M%==2 GOTO PNG
IF %M%==3 GOTO PACKVPK
IF %M%==4 GOTO DEFPATH
IF %M%==5 GOTO WIPE


:DEFPATH
cd .
start def-path.bat
GOTO MENU

:INPF
cd .
start OpenInputFolderOUT.bat
GOTO MENU

:PNG
cd .
start PNGConvertOUT.bat
GOTO MENU

:PACKVPK
cd ..
start z-5ScummVM-Builder-VPK.bat
cd "./.batch"
GOTO MENU

:WIPE
cd .
start zzz-Wipe.bat
GOTO MENU

:EOF
exit
