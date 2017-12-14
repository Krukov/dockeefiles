xhost +
docker rm chrome_$1
docker run -d --net="host" -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v $HOME/Downloads:/root/Downloads -v $HOME/.chrome/$1:/data -v /dev/shm:/dev/shm --device /dev/snd --device /dev/dri --name chrome_$1 --security-opt seccomp:$HOME/DockerApps/chrome/seccomp.conf --memory 1024mb jess/chrome --user-data-dir=/data
