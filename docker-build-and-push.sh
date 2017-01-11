#!/usr/bin/env bash
buildNumber=$1
serverImageTag=eu.gcr.io/caglabs/lab-1-node-k8s:${buildNumber}

docker build -t ${serverImageTag} .
gcloud docker push ${serverImageTag}
