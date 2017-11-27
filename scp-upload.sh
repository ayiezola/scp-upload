#!/bin/bash

echo "======================================="
echo "SCP Upload Script by noyes@jomgegar.com"
echo "            version 1.0 2017           "
echo "======================================="

echo "Before that, Please put your VPS IP Address in line 10,11 and 12"
echo "Press (e) to exit or (c) to continue :" 
echo "======================================"
read input
	if [ $input = "e" ]; then
		exit 0
	else [ $input = "c" ]
		vps1= 
		vps2=
		vps3=
		# Please put your VPS IP Address here
		#/* Please add more line if you have many vps */#
		echo "Please put your VPS username :"
		read username
		echo "Please input your ssh port :"
		read port
		read -e -p "Where do you want to put your file? example :/var/www/html :" path

		scp="/usr/bin/scp"
		echo "====================================="

		echo ""
		echo "	Which VPS you want to upload file? :"
		echo "	1) VPS-1 " $vps1
		echo "	2) VPS-2 " $vps2
		echo " 	3) VPS-3 " $vps3
		echo "	4) Exit  "
		read -p "Select an option [1-4]: " option
		case $option in
			1)
			read -e -p "Enter filename, use tab for completion: " file1
			$scp -P $port $file1 $username@$vps1:$path
			echo "Done!!! Your file was located in home folder."
			;;
			2)
			read -e -p "Enter filename, use tab for completion: " file2
			$scp -P $port $file2 $username@$vps2:$path
			echo "Done!!! Your file was located in home folder."
			;;
			3)
			read -e -p "Enter filename, use tab for completion: " file3
			$scp -P $port $file3 $username@$vps2:$path
			echo "Done!!! Your file was located in home folder."
			;;
			4)
			echo "Exiting .........."
			exit 0
		esac
	fi
