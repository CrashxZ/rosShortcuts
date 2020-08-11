#!/bin/bash
echo "Crash's Packege Creater"
echo "Enter workspace name"
read rootn
mkdir $rootn
cd $rootn
mkdir src
echo "Creating Workspace"
catkin_make
cd src
echo "Enter packege name"
read pkg
catkin_create_pkg $pkg std_msgs roscpp rospy geometry_msgs sensor_msgs nav_msgs


