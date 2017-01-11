# Simple Node.js Express app with Kubernetes configuration

## Install and run locally

- Make sure you have node and npm installed
- Clone the repo: `git clone https://github.com/dmarell/node-k8s.git`
- Build: `npm install`
- Start the server: `npm start`
- Verify function: `curl localhost:9090`

## Install in Kubernetes cluster

```
$ kubectl apply -f k8s/
```

## Run with Docker

```
$ npm install
$ bash docker-build-and-run.sh
$ curl http://localhost:9090
```

## Setup in Kubernetes cluster

```
$ kubectl apply -f k8s/
```
