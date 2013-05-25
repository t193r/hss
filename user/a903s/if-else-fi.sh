#!/usr/bin/env bash

#conditional komparasi bilangan angka

jumlahGundu=5;

if [[$jumlahGundu = 3]]; then
	echo "Selamat dari server"
	echo "jumlah gundu loe adalah $jumlahGundu"
elif [[ $jumlahGundu = 4 ]]; then
	echo "oke deh dari server"
	echo "jumlah gundu loe adalah $jumlahGundu"
else
	echo "gak ada selamat dari server"
	echo "jumlah gundu loe adalah $jumlahGundu"
fi

#Lebih dari = Greather than (-gt)

if [[ $jumlahGundu -gt 2 ]]; then
	echo "jumlah gundu loe Lebih dari dua"
	else
		echo "jumlah gundu loe GAK Lebih dari dua"
fi

################################################################