xhost +
docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix --name=atom -e DISPLAY=unix$DISPLAY -v $HOME/.Xauthority:/home/dummy/.Xauthority -v $HOME/.atom:/root/.atom -v $HOME/.virtualenvs:/root/.virtualenvs -v $HOME/Projects:/projects jess/atom
