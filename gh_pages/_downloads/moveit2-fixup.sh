#! /bin/bash
#---------------------------------------------------------------------------
# Set up a MoveIt2
#---------------------------------------------------------------------------

# Moveit2 Fixup

cd ~/moveit2/src
git clone --branch foxy https://github.com/JafarAbdi/fake_joint.git
cd ~/moveit2/src/ros2_control
git checkout 2c3aad1
cd ~/moveit2/src/ros2_controllers
git checkout 8587e07

cd ~/moveit2/
source /opt/ros/foxy/setup.sh
colcon build --merge-install --parallel-workers 2 --cmake-args -DCMAKE_BUILD_TYPE=RelWithDebInfo
