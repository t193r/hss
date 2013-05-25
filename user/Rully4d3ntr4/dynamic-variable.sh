#!/usr/bin/env bash

nama=`git config --global user.name`
echo "$nama";

loginName=`whoami`;
if [[ $loginName=="root" ]]; then
	echo "Welcome root"
else
	echo "Run this script as ROOT privilege"
fi

if [[ $nama=="rullyadentra" ]]; then
	echo "Permission denied"
	echo "Acces denied"
	exit 2
else
	echo "Welcome $nama"
fi