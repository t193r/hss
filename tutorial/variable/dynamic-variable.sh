#!/usr/bin/env bash

# Dynamic variable
# Lu punya variable, dimana variable itu kemungkinan
# nilainya nggak sama kalo dijalankan di mesin lain

nama=$(git config --global user.name);
echo $nama;

if [[ $nama == "Suju" ]]; then
    echo "Permission denied"
    echo "Access denied"
    exit 2
else
    echo "Welcome $nama"
fi

loginName=`whoami`;
if [[ $loginName == "root" ]]; then
    echo "Welcome root"
else
    echo "Run this script as ROOT privilege"
fi
