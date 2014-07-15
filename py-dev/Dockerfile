
FROM    dnephin/dnephin-dev

RUN     apt-get update
RUN     apt-get install -y software-properties-common
RUN     apt-get install -y python-software-properties

RUN     add-apt-repository ppa:fkrull/deadsnakes
RUN     apt-get update
RUN     apt-get install -y python2.6 python2.7 python3.3

RUN     apt-get install -y python-pip python-tox python-virtualenv
