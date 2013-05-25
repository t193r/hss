#!/usr/bin/env bash

#conditional

jumlahGundu=1;

if [[ $jumlahGundu=3 ]]; then
	echo "Selamat dari server"
	echo "jumlahGundu lu adalah" $jumlahGundu"
elif [[ $jumlahGundu=4 ]]; then
	echo "oke dari server"
	echo "jumlahGundu lu adalah $jumlahGundu"
else
	echo "gak ada Selamat dari server"
	echo "jumlahGundu lu adalah $jumlahGundu"
	
fi
# lebih dari -> Greather than (-gt)
if [[ $jumlahGundu -gt 2 ]]; then
	echo"jumlahGundu lu lebih dari dua"
	else
		echo "jumlahGundu lu gak lebih dari dua"
fi