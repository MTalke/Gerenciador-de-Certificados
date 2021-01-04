@ECHO OFF
REM Copyright (c) 2012-2017, EnterpriseDB Corporation.  All rights reserved

REM Copying the lib files to pkglibdir
move %1\lib\slony1_funcs*.dll C:\PROGRA~1\POSTGR~1\9.5\lib
move %1\lib\slevent.dll C:\PROGRA~1\POSTGR~1\9.5\lib

REM Creating file removal scripts to run at the time of uninstallation
REM Remove these files installed in the lib directory 
echo @ECHO OFF > %1/Slony/installer/Slony/removeFiles.bat
echo "cd C:\PROGRA~1\POSTGR~1\9.5\lib && del /S /Q slevent.dll slony1_funcs*.dll" >> %1/Slony/installer/Slony/removeFiles.bat
echo "cd C:\PROGRA~1\POSTGR~1\9.5\share && FOR /F %%%%A IN ('dir /b slony1_*.*sql') DO (del /S /Q %%%%A)" >> %1/Slony/installer/Slony/removeFiles.bat

cd %1\share\Slony && move * C:\PROGRA~1\POSTGR~1\9.5\share && cd %1\share && rd /S /Q Slony

