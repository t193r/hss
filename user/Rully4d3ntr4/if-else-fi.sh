#!/usr/bin/env bash

jumlahgundu=5;
if [[ $jumlahgundu = 3 ]]; then
	echo " Selamat Dari Server !!"
	echo " jumlah gundu saya adalah $jumlahgundu"
elif [[ $jumlahgundu = 4 ]]; then
	echo " Oke deh dari Server"
	echo " jumlahGundu Saya adalah $jumlahgundu"
else
	echo " Gak ada selamat dari server"
	echo " Jumlah gundu saya adalah $jumlahgundu"
fi

#lebih dari -> greater than (-gt)
if [[ $jumlahgundu -gt 2 ]]; then
	echo " jumlah gundu saya lebih dari dua"
else 
	echo " jumlah gundu saya Gak lebih dari dua"
fi
