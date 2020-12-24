cd %~dp0
mkdir app
mkdir aws

for %%I in (.) do set DIRNAME=%%~nI%%~xI
docker stop %DIRNAME%
docker rm %DIRNAME%
docker run -itd --name %DIRNAME% -v %CD%\app:/app -v %CD%\aws:/root/.aws vue-app
docker stop %DIRNAME%

pause
