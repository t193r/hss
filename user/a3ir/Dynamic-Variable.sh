#!/usr/bin/env bash

# Static variable
# Lu punya variable dimana variable itu kemungkinan
# bisa ga sama nilainya kalau dijalankan dimesin lain

nama=$(git config --global user.name);
echo $nama;

if [[ $nama == "Suju" ]]; then
	echo "Permission denied"
	echo "Access denied"
	exit 2
else
	echo "Welcome $nama"
fi

loginName="whoami";
if [[ $loginName == "root" ]]; then
	echo "Welcome root"
else
	echo "Run this script as ROOT privilage"
fi