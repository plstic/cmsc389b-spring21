FROM docker.pkg.github.com/plstic/cmsc389b-spring21/base:latest
# ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install bc && \
    curl http://www.jsoftware.com/download/j902/install/j902_linux64.tar.gz --output j902_linux64.tar.gz && \
    tar -xzf j902_linux64.tar.gz && \
    cd j902/bin && \
    ./install-usr.sh && \
    cp jconsole /usr/bin/jconsole && \
    chmod 755 /usr/bin/jconsole
WORKDIR /src
