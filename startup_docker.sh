printf "Build docker container..."
docker build -t docker_web_video_server .

# setup static ip address for docker container:
docker network create --subnet=172.18.0.0/16 net_for_docker_web_video_server

printf "\n\nStart container...\n\n"
docker run \
  --net net_for_docker_web_video_server --ip 172.18.0.22 \
  --device=/dev/video0 \
  --device=/dev/video1 \
  --device=/dev/video2 \
  --device=/dev/video3 \
  --device=/dev/video4 \
  --device=/dev/video5 \
      docker_ros
      
printf "You can join the stream now at: http://172.18.0.22:8080/stream?topic=/camera/color/image_raw"
