cd %~dp0
for %%I in (.) do set DIRNAME=%%~nI%%~xI
docker stop %DIRNAME%
docker rm %DIRNAME%
pause
