#!/usr/bin/env bash

#static variable 
#
nama=$(uname -a);
echo $nama;

work=$(pwd);
echo $work;

loginName=`whoami`;
if [[ $loginName == "root"  ]]; then
	echo "welcome to root"
else	
	echo "run as root"
fi