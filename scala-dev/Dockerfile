#
# Scala development image, with Scala IDE
#

FROM    dnephin/dnephin-dev

ENV     DEBIAN_FRONTEND noninteractive

RUN     apt-get update -qq
RUN     apt-get install -y software-properties-common

# Java
RUN     echo debconf shared/accepted-oracle-license-v1-1 select true | \
            debconf-set-selections && \
            echo debconf shared/accepted-oracle-license-v1-1 seen true | \
            debconf-set-selections
RUN     add-apt-repository -y ppa:webupd8team/java
RUN     apt-get update -qq
RUN     apt-get install -y oracle-java8-installer


# Scala
RUN     scala_version="scala-2.11.2"; \
            wget -q http://www.scala-lang.org/files/archive/$scala_version.deb && \
            dpkg -i $scala_version.deb

# sbt
RUN     apt-add-repository -y "deb http://dl.bintray.com/sbt/debian /"
RUN     apt-get update -qq
RUN     apt-get install -y --force-yes sbt


# SSH
RUN     apt-get install -y openssh-server
RUN     echo "X11Forwarding yes" >> /etc/ssh/ssh_config
EXPOSE  22

# X windows
RUN     apt-get install -y xpra


# Scala IDE
RUN     cd /opt; \
        wget -q http://downloads.typesafe.com/scalaide-pack/3.0.4.vfinal-211-20140723/scala-SDK-3.0.4-2.11-2.11-linux.gtk.x86_64.tar.gz && \
        tar -xf scala-SDK-3.0.4-2.11-2.11-linux.gtk.x86_64.tar.gz


ADD     start.sh /opt/start.sh
ENTRYPOINT bash /opt/start.sh

