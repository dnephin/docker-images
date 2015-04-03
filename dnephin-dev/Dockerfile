
# dnephin-dev image - generic dev environment
# 
# DOCKER-VERSION 1.0.0


FROM    ubuntu:14.10

MAINTAINER Daniel Nephin

RUN     apt-get update && apt-get install -y git vim tmux tree

RUN     useradd daniel -m -s /bin/bash -u 1000
RUN     echo "daniel ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER    daniel
WORKDIR /home/daniel
RUN     rm .*; \
        git clone https://github.com/dnephin/dotfiles.git .; \
        git submodule update --init; \
        mkdir .viminfo

ADD     . /code
ENV     HOME /home/daniel
ENTRYPOINT sudo -u daniel -E bash /code/start.sh
USER    root
