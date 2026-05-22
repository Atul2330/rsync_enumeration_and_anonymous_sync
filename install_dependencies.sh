#!/bin/bash

echo "Download and install required package"
echo " "
echo "The packages are required to run the other scripts. Do you agree for the installation of the packages(nmap rsync netcat)"
read -p "Yes(y) or No (n): " permission
if [ $permission = "y" ] || [ $permission = "Yes" ]
then
	echo "Downloading..."
	if command -v apt >/dev/null 2>&1
	then
		packageManager='apt'
		installCommand='sudo apt update && sudo apt install -y rsync nmap netcat-openbsd'
	elif command -v dnf >/dev/null 2>&1
	then
		packageManager='dnf'
		installCommand='sudo dnf install -y rsync nmap nc'
	elif command -v yum >/dev/null 2>&1
	then
        	packageManager='yum'
		installCommand='sudo yum install -y rsync nmap nc'
	elif command -v pacman >/dev/null 2>&1
	then
        	packageManager='pacman'
		installCommand='sudo pacman -$y --noconfirm rsync nmap openbsd-netcat'
	else
		echo "Unsupported Linux Distro"
		exit 1
	fi
	
	echo " "
	echo " [+] Detected Package Manager: $packageManager"
	echo " [+] Installing Required Packages..."
	eval "$installCommand"
	echo " "

	if [ $? -eq 0 ]
	then 
		echo "[+] Installation Completed Successfully"
	else
		echo "[!] Installation failed"
	fi
	

elif [ $permission = "n" ] || [ $permission = "No" ]
then
	echo "Disagreed"
	echo "Exiting..."
else
	echo "Wrong Input"
	echo "Exiting..."
fi
