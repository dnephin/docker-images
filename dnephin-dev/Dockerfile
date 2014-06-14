
# dnephin-dev image - generic dev environment
# 
# DOCKER-VERSION 1.0.0


FROM    ubuntu:14.04

MAINTAINER Daniel Nephin

RUN     apt-get update
RUN     apt-get -y upgrade 
RUN     apt-get install -y git vim tmux

RUN     useradd daniel -m -s /bin/bash
RUN     echo "daniel ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER    daniel
RUN     cd /home/daniel; \
        rm .*; \
        git clone https://github.com/dnephin/dotfiles.git .; \
        git submodule update --init; \
        mkdir .viminfo

USER    root
CMD     sudo -u daniel -i
