#! /bin/sh
# Script to flash imagess via fastboot
#

# This script can only be run in LINUX OS! 
# NOT SUPPORT to flash imagess by fastboot IN MAC OS!!!



echo "NOTE: The CMD can't return back successfully due to system reboot."
echo "Please ignore the fastboot execution status returned from fastboot. Also, "
echo "you can check reboot behavior at serial windows"

sudo ../../../fastboot flash stashtf ../../../../../../images/light-fm-a/tf.ext4
