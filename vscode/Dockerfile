# Dockerfile  
FROM debian:8

ENV DEBIAN_FRONTEND noninteractive  
RUN apt-get update && apt-get install -y libgtk2.0-0 libgconf2-4 libnss3 \  
    libasound2 libxtst6 libcanberra-gtk-module libgl1-mesa-glx git libnotify4 libxss1 \
    git curl wget zenity libxkbfile1 \ 
    build-essential \
    gcc g++ make python 
RUN wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz -P /tmp && \
    tar -zxvf /tmp/go1.8.linux-amd64.tar.gz -C /usr/local/
RUN curl --silent --location https://deb.nodesource.com/setup_6.x | bash - && apt-get install nodejs

ADD ./code.deb /vcs/

WORKDIR /vcs  
RUN dpkg -i code.deb && apt-get install -f && rm code.deb  
ENV GOROOT=/usr/local/go
CMD ["/usr/bin/editor", "-w", "--user-data-dir=/user_data"] 

