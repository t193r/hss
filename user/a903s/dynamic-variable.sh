#!/usr/bin/env bash

# Dynamic variable
# Loe punya variable dimana variable itu kemungkinan
# bisa enggak sama nilainya kalau dijalankan dimesin lain

nama=$(git config --global user.name);
echo $nama;

if [[ $nama == "a903s" ]]; then
	echo "permission denaid"
	echo "acces denaid"
	exit 2
else
	echo "welcome $nama"
fi

loginName=`whoami`;
if [[ $loginName == "root" ]]; then
	echo "welcome root"
else
	echo "run this script as ROOT privilege"
fi
