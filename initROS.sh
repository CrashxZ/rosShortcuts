#!/bin/bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' 

sudo apt install curl # if you haven't already installed curl


curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update

sudo apt install ros-noetic-desktop-full

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc


source ~/.bashrc

sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

sudo apt install python3-rosdep

sudo rosdep init
rosdep update


#Turtlebot Installation

sudo apt-get install ros-noetic-joy ros-noetic-teleop-twist-joy \
  ros-noetic-teleop-twist-keyboard ros-noetic-laser-proc \
  ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
  ros-noetic-rosserial-python ros-noetic-rosserial-client \
  ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
  ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
  ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
  ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers
  
  
  
  
sudo apt install ros-noetic-dynamixel-sdk

sudo apt install ros-noetic-turtlebot3-msgs

sudo apt install ros-noetic-turtlebot3




#simulations (tb3)


mkdir ~/tb_simulation
cd ~/tb_simulation
mkdir src/
cd ~/tb_simulation/src/

git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git


cd ~/tb_simulation && catkin_make


export TURTLEBOT3_MODEL=waffle_pi #burger or waffle 



#jupyter Noteboook


sudo apt-get install python3-pip
pip3 install jupyter
pip3 install notebook


echo "export PATH=$PATH:~/.local/bin" >> ~/.bashrc
source ~/.bashrc


