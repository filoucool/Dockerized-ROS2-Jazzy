# Dockerized ROS 2 Jazzy Setup

This repository contains the necessary scripts and configurations to build, run, and manage a Docker container for ROS 2 Jazzy on Ubuntu 24.04. Below is a detailed explanation of each script and its purpose.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Scripts](#scripts)
  - [build.sh](#build-sh)
  - [docker-compose.yaml](#docker-composeyaml)
  - [docker-exec.sh](#docker-execsh)
  - [docker-log.sh](#docker-logsh)
  - [docker-login.sh](#docker-loginsh)
  - [Dockerfile](#dockerfile)
  - [pull-master-image.sh](#pull-master-imagesh)
  - [run.sh](#runsh)
  - [setup_ros2_jazzy.sh](#setup_ros2_jazzysh)
  - [TOKEN.txt](#tokentxt)

## Prerequisites
- Docker installed on your system.
- A GitHub Personal Access Token with `read:packages`, `write:packages`, `delete:packages`, `repo` scopes stored in `TOKEN.txt`.

## Usage
**Build the Docker image:**
   ```bash
   ./build.sh
   ```
**Login to Docker using GitHub Personal Access Token:**
   ```bash
   ./docker-login.sh
   ```
**Run the Docker container:**
   ```bash
   ./run.sh
   ```
**Execute a shell inside the running container:**
   ```bash
   ./docker-exec.sh
   ```
**Logs the running container:**
   ```bash
   ./docker-log.sh
   ```
**Pulls de master ROS2 Jazzy Jalisco Image:**
   ```bash
   ./pull-master-image.sh
   ```

# Scripts / Files
## build.sh
<a name="build-sh"></a>
This script builds the Docker image for ROS 2 Jazzy using the Dockerfile. It also tags the image and pushes it to GitHub Container Registry (GHCR).

**Parameters**:
git_personal_token (required): The GitHub Personal Access Token.

## docker-compose.yaml
<a name="docker-composeyaml"></a>
This file defines the Docker services, networks, and volumes for running multi-container Docker applications.

## docker-exec.sh
<a name="docker-execsh"></a>
This script is used to execute a shell inside the running Docker container.

Parameters:
container_name (optional): The name of the Docker container to execute the shell in. Default is jazzy_container.

## docker-log.sh
<a name="docker-logsh"></a>
This script retrieves the logs from the running Docker container.

Parameters:
container_name (optional): The name of the Docker container to get logs from. Default is jazzy_container.

## docker-login.sh
<a name="docker-loginsh"></a>
This script logs into GitHub Container Registry (GHCR) using the Personal Access Token stored in TOKEN.txt.

Parameters:
git_personal_token (required): The GitHub Personal Access Token.

## Dockerfile
<a name="dockerfile"></a>
This file contains the instructions to build the Docker image for ROS 2 Jazzy.

## pull-master-image.sh
<a name="pull-master-imagesh"></a>
This script pulls the master Docker image from GHCR.

Parameters:
image_name (required): The name of the Docker image to pull.

## run.sh
<a name="runsh"></a>
This script runs the Docker container with the necessary settings.

Parameters:
container_name (optional): The name of the Docker container to run. Default is jazzy_container.

## setup_ros2_jazzy.sh
<a name="setup_ros2_jazzysh"></a>
This script initializes the ROS 2 Jazzy environment and sets up the workspace.

## TOKEN.txt
<a name="tokentxt"></a>
This file contains the GitHub Personal Access Token used for authentication. Ensure this file is kept secure and not shared.
