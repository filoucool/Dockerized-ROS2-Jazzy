# Dockerized ROS 2 Jazzy Setup

This repository contains the necessary scripts and configurations to build, run, and manage a Docker container for ROS 2 Jazzy on Ubuntu 24.04. Below is a detailed explanation of each script and its purpose.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Scripts](#scripts)
  - [build.sh](http://...#test)
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
1. **Build the Docker image:**
   ```bash
   ./build.sh

## Scripts
1. <h1 name="test"> build.sh <h1>
2. docker-compose.yaml
3. docker-exec.sh
4. docker-log.sh
5. docker-login.sh
6. Dockerfile
7. pull-master-image.sh
8. run.sh
9. setup_ros2_jazzy.sh
10. TOKEN.txt
