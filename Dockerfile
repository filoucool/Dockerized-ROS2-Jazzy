# Use Ubuntu 24.04 as base image
FROM ubuntu:24.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    gnupg2 \
    lsb-release \
    python3-pip \
    build-essential \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

# Set up a virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Upgrade pip and install colcon-common-extensions
RUN pip install --upgrade pip
RUN pip install -U colcon-common-extensions

# Install zsh and wget
RUN apt-get update && apt-get install -y \
    zsh \
    wget

# Install zsh in docker
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)" -- -t robbyrussell

# Set up the ROS 2 repository
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'

# Install ROS 2 Jazzy packages and rosdep
RUN apt-get update && apt-get install -y ros-jazzy-desktop python3-rosdep && rm -rf /var/lib/apt/lists/*

# Initialize rosdep
RUN rosdep init && rosdep update

# Set environment variables
ENV ROS_DISTRO=jazzy
ENV ROS_ROOT=/opt/ros/$ROS_DISTRO

# Set up entrypoint
COPY setup_ros2_jazzy.sh /
RUN chmod +x /setup_ros2_jazzy.sh
ENTRYPOINT ["/setup_ros2_jazzy.sh"]
