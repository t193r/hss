#!/usr/bin/env bash

# Conditional komparasi bilangan angka

JumlahGundu=5;

if [[$JumlahGundu=3]];then
	echo "Selamat dari Server"
	echo "Jumlah gundu lu adalah $JumlahGundu"
elif [[$JumlahGundu =4]];then
	echo "Oke deh dari Server"
	echo "Jumlah gundu lu adalah $JumlahGundu"
else
	echo "Gak ada Selamat dari Server"
	echo "Jumlah gundu lu adalah $JumlahGundu"
fi

#Lebih dari -> Greather than (-gt)
if [[$JumlahGundu -gt 2]];then
	echo "Jumlah gundu lu lebih dari dua"
else
	echo "Jumlah gundu lu gak lebih dari dua"
fi
################################################