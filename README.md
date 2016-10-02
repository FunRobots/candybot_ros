# candybot_video_recognition
Module for CandyBot to help recognise people and objects via web-cam 




#CandyBot ROS
==========

##About
Candybot ROS is a ROS based framework for development of CnadyBot series robots

Current version: v0.1

##Changelog:
v0.1 - Draft fo Candybot ROS framework 


##Files structure
______________________

``candybot_ros/`` 
	
	``apps/``    (программы-приложения с нужными сценариями и функциональностью)
		``__init__.py``
		``encyclopedia.py``
		...
	
	``core/``   (центр управления роботом)
		``__init__.py``
		...
	
	``launch/``  (управлением запуском робота и режимом работы dev / prod) 
		``__init__.py``
		``settings.py``
		``base.py``
		``dev.py``
		``prod.py``
		...

	``packages/``    (пакеты с модулями реализующими API и функционал)
		``audio/``
			``__init__.py``
			...
			``tests/``
		``motion/``
		``networks/``
		``vision/``
		``sensors/``
		``tracker/``
		...
	
	``requirements/``     (зависимости и требования для запуска)
		``base.txt``
		``dev.txt``
		``test.txt``
		``prod.txt``
		...
	``tests/`` (тесты для app and launch)


##References 
_________________________________

### ROS project 
* Documentation http://wiki.ros.org/ 
* Source code https://github.com/ros 





