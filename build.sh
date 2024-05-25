#!/bin/bash

PAT=$( cat TOKEN.txt )
docker build . --build-arg git_personal_token=$PAT -t jazzy-image-base
docker build . --file Dockerfile --build-arg git_personal_token=$PAT -t jazzy-image
