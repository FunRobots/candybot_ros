# This is a Dockerfile for Candybot project
FROM ros:latest
#MAINTAINER Mikhail mnrozhkov@gmail.com


# install linux packages
# RUN apt-get update && apt-get install -y \
# 	 #some linux packages
#    && rm -rf /var/lib/apt/lists/*


# install Candybot packages 
RUN apt-get update && apt-get install -y \
	#download candybot_ros repository
	wget -P /opt/ https://github.com/FunRobots/candybot_ros/archive/dev.zip && unzip /opt/dev.zip && rm /opt/dev.zip \
	#download candybot_ros packages
	wget -P /opt/candybot_ros-dev/packages/ https://github.com/FunRobots/candybot_vr/archive/dev.zip && unzip /opt/candybot_ros-dev/packages/dev.zip && rm /opt/candybot_ros-dev/packages/dev.zip \


# install custom launchfile
#ADD candybot.launch /tmp/candybot.launch