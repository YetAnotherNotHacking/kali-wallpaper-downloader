#!/bin/bash
# Check if the script is being run as root, fail if it is not
if [[ $EUID -ne 0 ]]; then
   echo "Failed: This script must be run as root, run 'sudo ./backgrounds.sh'" 1>&2
   exit 1
fi
echo NOITCE: This is the script to delete the wallpapers, do not run if you are not wanting to delete the wallpapers. :)
sleep 1
echo Updating package databases
sleep 1
apt update
echo Successful.
# Start the uninstallers
sleep 1
echo Uninstalling Legacy
apt remove kali-legacy-wallpapers
sleep 1
echo Uninstalling 2019.4
apt remove kali-wallpapers-2019.4
sleep 1
echo Uninstalling 2020.4
apt remove kali-wallpapers-2020.4
sleep 1
echo Uninstalling 2021.4
apt remove kali-wallpapers-2021.4
sleep 1
echo Uninstalling 2022
apt remove kali-wallpapers-2022
sleep 1
echo Uninstalling 2023
apt remove kali-wallpapers-2023
sleep 1
echo Uninstalling legacy
apt remove kali-wallpapers-legacy
sleep 1
echo Uninstalling 2023
apt remove kali-wallpapers-mobile-2023
sleep 1
echo Finished uninstalling all packages for wallpapers, updating database one last time before exiting
sleep 1
# Make sure apt is nice and clean and smells nice IDK
apt update
apt autoremove
sleep 2
echo Success, removed all wallpaper packages.
sleep 5
