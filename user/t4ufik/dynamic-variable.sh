#!/usr/bin/env bash
nama=$(git config --global user.name) ;
echo $nama;

if [[ $nama == "suju" ]]; then
	echo "Permission denied"
	echo "Acces denied"
	exit 2
else
	echo "Welcome $nama"
fi



LoginName=`whoami`;
if [[ $LoginName == "root" ]]; then
	echo "Welcome root"
else 
	echo "run this script as ROOT privilege"
fi



