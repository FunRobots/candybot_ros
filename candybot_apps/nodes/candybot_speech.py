#!/usr/bin/env python

## Simple node listens to std_msgs/Strings published 
## to the 'speech' topic and print it into console 

import rospy
from std_msgs.msg import String

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + 'I heard %s', data.data)

def speech():
    '''Simple node listens to std_msgs/Strings published 
    to the 'speech' topic and print it into console

    '''

    rospy.init_node('speech', anonymous=True)

    rospy.Subscriber('speech_recognized', String, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    speech()
