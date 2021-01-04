@ECHO OFF 
cd C:\PROGRA~1\POSTGR~1\9.5\lib && del /S /Q slevent.dll slony1_funcs*.dll 
cd C:\PROGRA~1\POSTGR~1\9.5\share && FOR /F %%A IN ('dir /b slony1_*.*sql') DO (del /S /Q %%A) 
