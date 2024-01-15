sudo chmod 777 /dev/ttyUSB0 & sleep 1;
roslaunch mavros px4.launch fcu_url:="/dev/ttyUSB0:921600" & sleep 2;
cd ~/project/livox_ws
source devel/setup.bash
roslaunch livox_ros_driver2 msg_MID360.launch & sleep 2;
cd ~/project/fast_lio_ws
source devel/setup.bash
roslaunch fast_lio mapping_mid360.launch 
wait;