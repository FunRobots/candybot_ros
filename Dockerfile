# This is a Dockerfile for Candybot project
FROM ros:indigo
MAINTAINER Mikhail mnrozhkov@gmail.com

# install Candybot packages 
RUN apt-get update && apt-get install -y \
	ros-indigo-ros-tutorials \
    ros-indigo-common-tutorials \
    candybot_vr \
    && rm -rf /var/lib/apt/lists/

# install linux packages
#RUN apt-get update && apt-get install -y \
#	 some linux packages
#	&& rm -rf /var/lib/apt/lists/*

# install custom launchfile
#ADD candybot.launch /tmp/candybot.launch