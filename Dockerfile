# s is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:kinetic-desktop-xenial

# install ros packages
RUN apt update && apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop-full=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

RUN apt update && apt -y install vim && \
        apt -y install tmux && \  
        apt -y install git && \
        apt -y install sudo && \
        apt -y install net-tools && \
        apt-get -y install python-rdflib wget xterm


RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"

RUN python get-pip.py
RUN pip install wrapt inflection
#RUN pip install Cython

# Define a user to execute the script
ARG UNAME=ros
ARG UID=1001
ARG GID=1001
ENV UNAME ${UNAME}
RUN groupadd -g $GID $UNAME
RUN useradd -m -u $UID -g $GID -s /bin/bash $UNAME
RUN echo "$UNAME:ros" | chpasswd && adduser $UNAME sudo
USER $UNAME

#COPY ./sudoers /etc/sudoers

# This will the working directory of the ocntainer
WORKDIR /home/ros/

EXPOSE 11011-11310 
# Forward the roscore port
EXPOSE 11311
# forward browser port

