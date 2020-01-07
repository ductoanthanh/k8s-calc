docker build -t toanthanh/fib-client:latest -t toanthanh/fib-client:$SHA -f ./client/Dockerfile ./client
docker build -t toanthanh/fib-server:latest -t toanthanh/fib-server:$SHA -f ./server/Dockerfile ./server
docker build -t toanthanh/fib-worker:latest -t toanthanh/fib-worker:$SHA -f ./worker/Dockerfile ./worker

docker push toanthanh/fib-client:latest
docker push toanthanh/fib-server:latest
docker push toanthanh/fib-worker:latest

docker push toanthanh/fib-client:$SHA
docker push toanthanh/fib-server:$SHA
docker push toanthanh/fib-worker:$SHA