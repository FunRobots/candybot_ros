#CandyBot ROS
==========

##About
Candybot ROS is a ROS based framework for development of CnadyBot series robots

Current version: v0.1
ROS version: kinetic 

##Changelog:
v0.1 - Draft fo Candybot ROS framework 


##Files structure

``candybot_ros/`` 
	
	``apps/``    					(программы-приложения с нужными сценариями и функциональностью)

		``launch/``  				(управлением запуском робота и режимом работы dev / prod) 
		``nodes``					(приложения и сценарии для запуска в качестве ROS nodes)
		``scripts/`` 				(скрипты для nodes и utils)
		``tests/`` 					(тесты для apps and launch)

	``core/``   					(центр управления роботом)

	``msg/``   						(форматы messages)

	``packages/``   				(пакеты с модулями реализующими API и функционал)
		``audio/``
		``motion/``
		``networks/``
		``vision/``
		``sensors/``
		``tracker/``
	
	``requirements/``     			(зависимости и требования для запуска)



##References 


### ROS project 
* Documentation http://wiki.ros.org/ 
* Source code https://github.com/ros 



# Instruction to configure and run canfybot_ros docker network 

## 1. Get and configure Linux and docker (first time)

###Install Docker 

###Get Candybot ROS docker image

###Resolve Linux requirements
sudo apt-get install python-rospkg
sudo pip install -U rospkg


###Resolve Python requirements 
``sudo apt-get install python-pip python3-pip python-dev build-essential ``
``sudo pip install --upgrade pip``

Install PyYaml for Python2.7
``sudo apt-get install libyaml-dev libpython2.7-dev python-yaml``
``pip install pyyaml``

Install PyYaml for Python3
sudo apt-get install python3-pip
sudo apt-get install python3-pip
pip3 install rospkg
pip3 install catkin_pkg
``pip3 install wikipedia`` (1.4.0)


pip install google-api-python-client==1.5.3

###Install OpenCV
Source: http://docs.opencv.org/3.1.0/d7/d9f/tutorial_linux_install.html 

1. Install required packages (360MB +): 
``sudo apt-get install build-essential``
``sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev``
``sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev``

2. Getting OpenCV Source Code (500MB +)
``cd ~/<my_working_directory>``  (use ~ as a working directory)
``git clone https://github.com/Itseez/opencv.git``
``git clone https://github.com/Itseez/opencv_contrib.git``

3. Building OpenCV from Source Using CMake
``cd ~/opencv``
``mkdir build``
``cd build``
``cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..``




## 2. Create and configure a ROS Workspace (install new package)
``mkdir -p ~/candybot_catkin/src``
``cd ~/candybot_catkin/src``
``catkin_init_workspace``

### copy candybot_vr package to candybot_catkin workspace 
``git clone -b dev https://github.com/FunRobots/candybot_vr.git``
``cd ~/candybot_catkin``

Build packages
``catkin_make``

Add package path and set up $PYTHONPATH
``source devel/setup.bash``

Add package path and set up $PYTHONPATH: 
``source devel/setup.bash``

Add to $PYTHONPATH Python 3 libraries path do
``export PYTHONPATH=/usr/local/lib/python3.5/dist-packages:$PYTHONPATH``

## Run Candybot ROS nodes manually 
    7.1. change nodes execution rights *:

choose folder 
``cd ~/candybot_catkin/src/candybot_vr/scripts``

change nodes execution rights
``chmod +x decision_maker.py listener.py viewer.py``

Run in new terminal ROS  roscore
``cd ~/candybot_catkin/src/candybot_vr/scripts``
``roscore``
roscore will start up:
	*a ROS Master
	*a ROS Parameter Server
	*a rosout logging node

Run other nodes 
- update pathes 
``source /opt/ros/kinetic/setup.bash``
``source devel/setup.bash``
- run nodes (each one in the new terminal or in detached mode)
``rosrun candybot_vr decision_maker.py``
``rosrun candybot_vr listener.py``
``rosrun candybot_vr viewer.py``
- do once ** - do where package is changed *** - do every time to run nodes

## Run Candybot ROS nodes from pre-configured Candybot docker image 










