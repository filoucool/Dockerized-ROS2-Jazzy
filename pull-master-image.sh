#!/bin/bash

bash docker-login.sh
docker pull ghcr.io/filoucool/dockerized-ros2-jazzy/master:latest
docker tag ghcr.io/filoucool/dockerized-ros2-jazzy/master jazzy-image