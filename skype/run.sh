# docker run -d -v /etc/localtime:/etc/localtime -p 4713:4713 --device /dev/snd --name pulseaudio jess/pulseaudio
docker run -d -v /etc/localtime:/etc/localtime -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/snd --name skype jess/skype
