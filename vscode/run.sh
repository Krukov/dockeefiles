xhost +
docker rm vscode
docker run -d -e DISPLAY -e SHELL=/bin/bash -v $HOME/.ssh:/root/.ssh -v $HOME/.gitconfig:/root/.gitconfig -v $HOME/.vscode/user:/user_data -v $HOME/go:/root/go -v $HOME/.vscode/editor:/root/.vscode -v $HOME/.Xauthority:/root/.Xauthority -v $HOME/Projects:/projects -v $HOME/DockerApps/vscode:/worked -w /worked --name vscode --net=host vscode 
