#!/usr/bin/env bash

rm thunderbird.snap
docker build -t thunderbird -f ./DockerFile .
container=$(docker container create thunderbird)
echo "$container"
docker cp "$container":/thunderbird/thunderbird.snap .
echo "To install the snap run 'sudo snap install thunderbird.snap --dangerous --jailmode'"
