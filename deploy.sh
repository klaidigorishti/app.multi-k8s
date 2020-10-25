docker build -t klaidigorishti/multi-client:latest -t klaidigorishti/multi-client:$GIT_SHA -f ./client/Dockerfile ./client
docker build -t klaidigorishti/multi-server:latest -t klaidigorishti/multi-server:$GIT_SHA -f ./server/Dockerfile ./server
docker build -t klaidigorishti/multi-worker:latest -t klaidigorishti/multi-worker:$GIT_SHA -f ./worker/Dockerfile ./worker

docker push klaidigorishti/multi-client:latest
docker push klaidigorishti/multi-client:$GIT_SHA
docker push klaidigorishti/multi-server:latest
docker push klaidigorishti/multi-server:$GIT_SHA
docker push klaidigorishti/multi-worker:latest
docker push klaidigorishti/multi-worker:$GIT_SHA
