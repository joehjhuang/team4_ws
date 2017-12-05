#!/usr/bin/python
"""
2.12 Hand Controller: Using the UDP to collect data sent from Arduino, purely reflect the result of arduino
PreReq:
    Turn on the hotspot of the computer
    check the IP and SSID keys and change which in /team4_ws/src/hand_controller/src/SensorDataTrans/SensorDataTrans.ino and arduino_secrets.h
    Upload the Arduino code above to arduino of hand controller
TODO: write the filter to make the control message more clear
Joe Huang Nov 2017
"""

import rospy
import serial
import socket

from std_msgs.msg import Bool
from geometry_msgs.msg import Vector3
import pdb

UDP_PORT = 5005
class Hand_Controller:
    """
    The node that recieve data from arduino and publish it in ROS
    Publish topics:
        /freeze_bool: std_msgs/Bool; freeze or not; keep publishing until rospy ends
        /release_bool: std_msgs/Bool; release gripper or not; keep publishing until rospy ends
        /hand_control: geometry_msgs/Vector3; angle of hand controller, 0~360; keep publishing until rospy ends
    """
    def __init__(self):
        # make sure the button when is up and when is down
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.bind(('', UDP_PORT))
        self.timer = rospy.Timer(rospy.Duration(0.05), self.callback)
        self.freeze_pub = rospy.Publisher("/freeze_bool", Bool, queue_size=1)
        self.release_pub = rospy.Publisher("/release_bool", Bool, queue_size=1)
        self.euler_pub = rospy.Publisher("/hand_control", Vector3, queue_size=1)
        self.euler = [0., 0., 0.]
        self.freeze = "1."
        self.release = "1."
        while True:
            data, addr = self.sock.recvfrom(1024)
            if data == '\n':
                x = self.sock.recvfrom(1024)[0]
                self.sock.recvfrom(1024)
                y = self.sock.recvfrom(1024)[0]
                self.sock.recvfrom(1024)
                z = self.sock.recvfrom(1024)[0]
                self.sock.recvfrom(1024)
                freeze = self.sock.recvfrom(1024)[0]
                self.sock.recvfrom(1024)
                release = self.sock.recvfrom(1024)[0]
                if freeze == '1':
                    self.freeze = True
                if freeze == '0':
                    self.freeze = False
                if release == '1':
                    self.release = True
                if release == '0':
                    self.release = False
                try:
                    x = float(x)
                    y = float(y)
                    z = float(z)
                    self.euler = [x, y, z]
                except:
                    print "discard"

    def callback(self, msg):
        euler = Vector3()
        euler.x = self.euler[0]
        euler.y = self.euler[1]
        euler.z = self.euler[2]
        self.euler_pub.publish(euler)
        
        freeze = Bool()
        if float(self.freeze) == 0:
            freeze.data = False
        else:
            freeze.data = True
        self.freeze_pub.publish(freeze)

        release = Bool()
        if float(self.release) == 0:
            release.data = False
        else:
            release.data = True
        self.release_pub.publish(release)
        return

if __name__ == '__main__':
    rospy.init_node("hand_controller")
    node = Hand_Controller()
    rospy.spin()

        
