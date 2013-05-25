#!/usr/bin/env bash

# Conditional komparasi bilangan angka

jumlahGundu=1;

if [[ $jumlahGundu = 3 ]]; then
    echo "Selamat dari Server"
    echo "Jumlah gundu lu adalah $jumlahGundu"
elif [[ $jumlahGundu = 4 ]]; then
    echo "Oke deh dari Server"
    echo "Jumlah gundu lu adalah $jumlahGundu"
else
    echo "Gak ada Selamat dari server"
    echo "Jumlah gundu lu adalah $jumlahGundu"
fi

# Lebih dari -> Greater Than (-gt)
if [[ $jumlahGundu -gt 2 ]]; then
    echo "Jumlah gundu lu lebih dari dua"
else
    echo "Jumlah gundu lu GAK lebih dari dua"
fi

##############################################
