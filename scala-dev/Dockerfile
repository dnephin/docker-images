#
# Scala development image, with Scala IDE
#
# Run with: -v /tmp/.X11-unix/X0:/tmp/.X11-unix/X0
#

FROM    ubuntu:14.10

RUN    apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
            software-properties-common

# Java
RUN     echo debconf shared/accepted-oracle-license-v1-1 select true | \
            debconf-set-selections && \
            echo debconf shared/accepted-oracle-license-v1-1 seen true | \
            debconf-set-selections
RUN     add-apt-repository -y ppa:webupd8team/java && \
        add-apt-repository -y "deb http://dl.bintray.com/sbt/debian /" && \
        apt-get update && \
        DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes \
            oracle-java8-installer \
            sbt

# Scala
RUN     scala_version="scala-2.11.6"; \
            wget -q http://www.scala-lang.org/files/archive/$scala_version.deb && \
            dpkg -i $scala_version.deb


# Scala IDE
RUN     cd /opt; \
        wget -q http://downloads.typesafe.com/scalaide-pack/4.0.0.vfinal-luna-211-20150305/scala-SDK-4.0.0-vfinal-2.11-linux.gtk.x86_64.tar.gz && \
        tar -xf scala-SDK*.tar.gz

RUN     useradd daniel -m -s /bin/bash -u 1000
RUN     echo "daniel ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

CMD     sudo -u daniel DISPLAY=:0 /opt/eclipse/eclipse --no-pulseaudio
