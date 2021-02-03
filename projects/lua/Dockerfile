FROM docker.pkg.github.com/plstic/cmsc389b-spring21/base:latest
# ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install build-essential libreadline-dev libncurses5-dev -y
RUN mkdir lua_build && \
    cd lua_build && \
    curl -R -O http://www.lua.org/ftp/lua-5.3.5.tar.gz && \
    tar -zxf lua-5.3.5.tar.gz && \
    cd lua-5.3.5 && \
    make linux test && \
    make install
RUN mkdir /root/.luarocks && \
    wget https://luarocks.org/releases/luarocks-3.5.0.tar.gz && \
    tar zxpf luarocks-3.5.0.tar.gz && \
    cd luarocks-3.5.0 && \
    ./configure && make && make install
RUN luarocks install lcurses
# -- sanity check
RUN lua -v && luarocks --version && luarocks list
WORKDIR /src
