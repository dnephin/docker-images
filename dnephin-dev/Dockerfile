
# dnephin-dev image - generic dev environment
# 
# DOCKER-VERSION 1.0.0


FROM    ubuntu:14.04

MAINTAINER Daniel Nephin

RUN     apt-get update
RUN     apt-get -y upgrade 
RUN     apt-get install -y git vim tmux tree

RUN     useradd daniel -m -s /bin/bash -u 1000
RUN     echo "daniel ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER    daniel
RUN     cd /home/daniel; \
        rm .*; \
        git clone https://github.com/dnephin/dotfiles.git .; \
        git submodule update --init; \
        mkdir .viminfo

WORKDIR /home/daniel
ENV     HOME /home/daniel
ENTRYPOINT TERM=xterm-256color sudo -u daniel tmux -2
USER    root
