# docker_ros-web-video-server
A simple repo to create a docker container, which runs web_video_server and realsense_ros2_camera, to stream the input of a realsense camera to the webbrowser.
Just plug in your realsense camera (d435 in my case), start the script via:

bash startup_docker.sh

and visit your browser: 

http://172.18.0.22:8080/stream?topic=/camera/color/image_raw

