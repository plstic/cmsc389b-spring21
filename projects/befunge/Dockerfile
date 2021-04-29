FROM docker.pkg.github.com/plstic/cmsc389b-spring21/base:latest
RUN dpkg --remove-architecture arm64 && \
    apt update && apt install git gcc -y --fix-missing
RUN git clone https://github.com/catseye/Befunge-93 && \
    cd Befunge-93 && \
    make all && \
    cp /Befunge-93/bin/bef /bin/
WORKDIR /src
