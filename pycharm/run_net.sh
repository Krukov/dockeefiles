xhost +
docker rm pycharm
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v $HOME/.virtualenvs:/root/.virtualenvs -v $HOME/Projects:/projects -v $HOME/pycharm_home:/root -v $HOME/.ssh:/root/.ssh -e DISPLAY=$DISPLAY -v $HOME/color.icls:/root/.PyCharm2016.3/config/colors/My.icls -p 8000:8000 -p 5000:3000 --name pycharm pycharm 
