#!/bin/bash
echo "Starting camera and script... \n"
source /opt/ros/dashing/setup.bash
nohup ros2 run realsense_ros2_camera realsense_ros2_camera &
ros2 run web_video_server web_video_server
echo "Web-video server running on port 8080!"