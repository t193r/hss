#!/usr/bin/env bash

# Conditional

jumlahGundu=5;

if [[ $jumlahGundu = 3 ]]; then
	echo "Selamat dari server"
	echo "jumlah gundu adalah $jumlahGundu"
elif [[  $jumlahGundu = 4  ]]; then
	echo "Oke dari server"
	echo "jumlah gundu adalah $jumlahGundu"
else
	echo "Gak ada selamat dari server"
	echo "jumlah gundu adalah $jumlahGundu"
fi

# Lebih dari -> Greater Than (-gt)
if [[  $jumlahGundu -gt 2 ]]; then
	echo "jumlah gundu Lebih dari dua"
else
	echo "jumlah gundu Gak Lebih dari dua"
fi
