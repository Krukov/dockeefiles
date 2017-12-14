FROM debian

ENV PYCHARM_HOME=/etc/pycharm
ADD firefox-46.0.tar.bz2 /firefox 
    
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y libgtk-3-0 libasound2 libdbus-glib-1-2 libxt6

ENTRYPOINT ["/firefox/firefox/firefox"]
