xhost +
docker rm chrome_dev
docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v $HOME/Downloads:/root/Downloads -v $HOME/.chrome/dev:/data -v /dev/shm:/dev/shm --device /dev/snd --device /dev/dri --name chrome_dev --security-opt seccomp:$HOME/DockerApps/chrome/seccomp.conf --link pycharm jess/chrome --user-data-dir=/data
