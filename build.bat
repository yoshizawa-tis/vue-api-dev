cd %~dp0
mkdir app
mkdir aws
docker stop vue-app
docker rm vue-app
docker rmi vue-app
docker build -t vue-app .
docker run -itd --name vue-app -v %CD%\app:/app -v %CD%\aws:/root/.aws vue-app
docker stop vue-app
pause

