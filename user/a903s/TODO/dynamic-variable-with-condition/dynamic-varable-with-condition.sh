#!/usr/bin/env bash

jumlahPaket=`dpkg --get-selections | wc -l`;
echo $jumlahPaket;


if [[ $jumlahPaket -gt 1000 ]]; then
	echo "jumalah paket yang terinstall sangat banyak"
	echo "disarankan untuk membuang paket-paket yang tidak perlu"
	echo "untuk melihat paket yang terinstall ketik : dpkg --get-selection | wc -l"
	
fi

################################################################