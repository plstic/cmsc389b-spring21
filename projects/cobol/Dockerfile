FROM docker.pkg.github.com/plstic/cmsc389b-spring21/base:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install gcc libc-dev libdb-dev libgmp-dev libncurses-dev libtool-bin libxml2-dev perl -y tcl
# -- skipping `make check` b/c some tests fail, but we don't really care
RUN wget https://sourceforge.net/projects/gnucobol/files/gnucobol/3.1/gnucobol-3.1-rc1.tar.gz && \
    tar xvf gnucobol-3.1-rc1.tar.gz && \
    cd gnucobol-3.1-rc1 && \
    ./configure && \
    make && make install && \
    ldconfig && \
    cobc --version
WORKDIR /src
