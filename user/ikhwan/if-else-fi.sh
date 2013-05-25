# t193r 
# 2. if-else-fi.sh
#Conditional 

jumlahGundu=3;

if [[ $jumlahGundu = 3 ]]; then
	echo "Selamat dari server "
	echo "jumlah gundu lu adalah $jumlahGundu "

elif [[ $jumlahGundu = 4  ]]; then
	echo "Oke deh dari server "
	echo "jumlah gundu lu adalah $jumlahGundu "

else 
	echo "Gak ada Selamat dari server "
	echo "jumlah gundu lu adalah $jumlahGundu "
fi

#Lebih dari -> Greater Than 

if [[ $jumlahGundu -gt 2 ]]; then
	echo "jumlah gundu lu lebih dari dua "

else 
	echo "jumlah gundu lu gak lebih dari dua "
fi