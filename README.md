#CandyBot ROS
==========

##About
Candybot ROS is a ROS based framework for development of CnadyBot series robots

Current version: v0.1

##Changelog:
v0.1 - Draft fo Candybot ROS framework 


##Files structure

``candybot_ros/`` 
	
	``apps/``    					(программы-приложения с нужными сценариями и функциональностью)

		``launch/``  				(управлением запуском робота и режимом работы dev / prod) 
			``__init__.py``
			``settings.py``
			``base.py``
			``dev.py``
			``prod.py``
			...
		``nodes``					(приложения и сценарии для запуска в качестве ROS nodes)
			``__init__.py``
			``encyclopedia.py``
			...
		``scripts/`` 				(скрипты для nodes и utils)
		
		``tests/`` 					(тесты для apps and launch)
	

	``core/``   					(центр управления роботом)
		``__init__.py``
		...

	``msg/``   						(форматы messages)

	``packages/``   				(пакеты с модулями реализующими API и функционал)
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
	
	``requirements/``     			(зависимости и требования для запуска)
		``base.txt``
		``dev.txt``
		``test.txt``
		``prod.txt``
		...



##References 


### ROS project 
* Documentation http://wiki.ros.org/ 
* Source code https://github.com/ros 





