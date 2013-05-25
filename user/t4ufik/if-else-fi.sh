#!/usr/bin/env bash
jumlahpacar=3;

if [[ $jumlahpacar = 3 ]]; then
	echo "selamat dari server"
	echo "jumlah pacar lu adalah $jumlahpacar"
elif [[ $jumlahgundu = 5 ]]; then
		echo "oke deh dari server"
		echo "jumlah pacar lu adalah $jumlahpacar"
	else
		echo "ga ada selamat dari server"
		echo "jumlah pacar lu adalah $jumlahpacar"

fi



if [[ $jumlahpacar -gt 2 ]]; then
	echo "jumlah pacar lu lebih dari dua"
	else
		echo "jumlah pacar lu ga lebih dari dua"
fi