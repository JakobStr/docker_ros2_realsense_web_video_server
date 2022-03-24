FROM ros:dashing

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    ros-${ROS_DISTRO}-web-video-server\
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y iputils-ping
RUN apt-get install -y ros-dashing-cv-bridge ros-dashing-librealsense2 ros-dashing-message-filters ros-dashing-image-transport
RUN apt-get install ros-dashing-realsense-camera-msgs ros-dashing-realsense-ros2-camera
WORKDIR /app
COPY . .
EXPOSE 8080

RUN ["chmod", "+x", "docker_commands.sh"]
ENTRYPOINT [ "./docker_commands.sh" ]
