@echo off
set ERROR_CODE=0

set BASEDIR=%~dp0\
cd %BASEDIR%

filebrowser.exe --address 0.0.0.0 --port 18080 --log %BASEDIR%\run.log --root D:\

