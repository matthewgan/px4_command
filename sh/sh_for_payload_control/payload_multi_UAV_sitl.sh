##
gnome-terminal --window -e 'bash -c "roslaunch px4 multi_drone_payload_sitl.launch; exec bash"' \
--tab -e 'bash -c "sleep 3; roslaunch optitrack_broadcast emulator_for_gazebo.launch; exec bash"' \
--tab -e 'bash -c "sleep 3; roslaunch px4_command px4_multidrone_pos_estimator_pure_vision.launch uavID:=uav0; exec bash"' \
--tab -e 'bash -c "sleep 3; roslaunch px4_command px4_multidrone_pos_controller.launch uavID:=uav0; exec bash"' \
--tab -e 'bash -c "sleep 3; roslaunch px4_command px4_multidrone_pos_estimator_pure_vision.launch uavID:=uav1; exec bash"' \
--tab -e 'bash -c "sleep 3; roslaunch px4_command px4_multidrone_pos_controller.launch uavID:=uav1; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun px4_command set_uav0_mode; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun px4_command set_uav1_mode; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun qt_ground_station qt_ground_station"' \
