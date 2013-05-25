#!/usr/bin/env bash

# Dynamic variable

nama=$(git config --global user.name);
echo $nama

if [[ $nama == "suju" ]]; then
	echo "Permission denied"
	echo "Acces denied"
	exit 2
else
	echo "welcome $nama"

fi

loginName=`whoami`;
if [[ $loginName == "root" ]]; then
	echo "welcome root"
else
	echo "Run this script as ROOT privilege"
fi
