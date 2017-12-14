host +
docker rm goide
docker run -d -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v $HOME/Projects:/projects -v $HOME/.gitconfig:/root/.gitconfig -e DISPLAY=$DISPLAY --name goide goglang
