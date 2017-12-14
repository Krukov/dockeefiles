xhost +
docker rm pycharm 
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v $HOME/Projects:/projects -v $HOME/.PyCharm2016.1:/root/.PyCharm2016.1 -v $HOME/color.icls:/root/.PyCharm2016.1/config/colors/My.icls -v $HOME/.virtualenvs:/root/.virtualenvs -v $HOME/.ssh:/root/.ssh -v $HOME/.gitconfig:/root/.gitconfig --net="none" -e DISPLAY=$DISPLAY -p 8000:8000 -p 3000:3000 --name pycharm pycharm
