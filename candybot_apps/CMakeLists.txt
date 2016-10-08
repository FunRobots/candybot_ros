cmake_minimum_required(VERSION 2.8.3)
project(candybot_apps)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS message_generation rospy
)

# add_message_files(
#   FILES  # e.g. Floats.msg HeaderString.msg
# )
# add_service_files(
#   DIRECTORY srv 
#   FILES AddTwoInts.srv BadTwoInts.srv
# )
## Generate services in the 'srv' folder
# add_service_files(
#  FILES  # e.g. Floats.srv HeaderString.srv
#)

## Generate added messages and services with any dependencies
# generate_messages()

catkin_python_setup()

catkin_package(CATKIN_DEPENDS message_runtime
)

catkin_install_python(PROGRAMS ./nodes/candybot_speech.py ./nodes/candybot_audio.py
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
