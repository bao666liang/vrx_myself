# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "laser_geometry;message_filters;nodelet;roscpp;sensor_msgs;tf2;tf2_ros;tf2_sensor_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-llaserscan_to_pointcloud;-lpointcloud_to_laserscan".split(';') if "-llaserscan_to_pointcloud;-lpointcloud_to_laserscan" != "" else []
PROJECT_NAME = "pointcloud_to_laserscan"
PROJECT_SPACE_DIR = "/home/wanbaoliang/wamv_ws/install"
PROJECT_VERSION = "1.4.1"
