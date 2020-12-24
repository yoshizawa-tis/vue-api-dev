cd %~dp0
docker rmi vue-app
docker build -t vue-app .
pause
