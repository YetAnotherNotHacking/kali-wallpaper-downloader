!/bin/bash
# Check if the script is being run as root, fail if it is not
if [[ $EUID -ne 0 ]]; then
   echo "Failed: This script must be run as root, run 'sudo ./backgrounds.sh'" 1>&2
   exit 1
fi
echo NOITCE: The installs are in order from the official Kali site listing, if you want to interupt at any point note that you will loose progress beyond what has been completed.
sleep 1
echo Updating package databases
sleep 1
apt update
echo Successful.
# Start the installers
sleep 1
echo Installing Legacy
apt install kali-legacy-wallpapers
sleep 1
echo Installing 2019.4
apt install kali-wallpapers-2019.4
sleep 1
echo Installing 2020.4
apt install kali-wallpapers-2020.4
sleep 1
echo Installing 2021.4
apt install kali-wallpapers-2021.4
sleep 1
echo Installing 2022
apt install kali-wallpapers-2022
sleep 1
echo Installing 2023
apt install kali-wallpapers-2023
sleep 1
echo Installing legacy
apt install kali-wallpapers-legacy
sleep 1
echo Installing 2023
apt install kali-wallpapers-mobile-2023
sleep 1
echo Finished installing all packages for wallpapers, updating database one last time before exiting
sleep 1
# Make sure apt is nice and clean and smells nice IDK
apt update
apt autoremove
sleep 2
echo Success, you should now see all wallpapers in your desktop settings, right click on the desktop, and then you should see all wallpapers are available.
sleep 5
