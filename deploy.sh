docker build -t toanthanh/multi-client:latest -t toanthanh/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t toanthanh/multi-server:latest -t toanthanh/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t toanthanh/multi-worker:latest -t toanthanh/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push toanthanh/multi-client:latest
docker push toanthanh/multi-server:latest
docker push toanthanh/multi-worker:latest

docker push toanthanh/multi-client:$SHA
docker push toanthanh/multi-server:$SHA
docker push toanthanh/multi-worker:$SHA