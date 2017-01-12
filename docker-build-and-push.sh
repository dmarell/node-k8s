#!/usr/bin/env bash
set -e

buildNumber=$1
serverImageTag=eu.gcr.io/caglabs-155116/lab-1-node-k8s:${buildNumber}

docker build -t ${serverImageTag} .
gcloud docker -- push ${serverImageTag}
