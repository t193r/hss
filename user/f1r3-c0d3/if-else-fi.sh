#!/usr/bin/env bash 


jumlahgundu=1; 

if [[ jumlahgundu = 3 ]]; then
	echo "Selamat dari server"
	echo "jumlah gundu lu adalah $jumlahgundu"

elif [[ jumlahgundu=4 ]]; then
	echo "Oke deh dari server"
	echo "jumlah gundu adalah $jumlahgundu"
else	
	echo "Gak ada Selamat dari server"
	echo "jumlah 	 lu adalah $jumlahgundu"
fi

#lebih dari -> greater Than  (-gt)
if [[ $jumlahgundu -gt 2 ]]; then
		echo "jumlah gundu lu lebih dari dua"
	else
		echo "jumlah gundu lu gak lebih dari dua"
	fi	