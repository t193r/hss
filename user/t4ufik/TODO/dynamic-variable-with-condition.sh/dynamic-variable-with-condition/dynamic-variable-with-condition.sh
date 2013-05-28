#!/usr/bin/env bash

jumlahpaket=$(dpkg -l | grep ii | wc -l
)

echo $jumlahpaket;

if [[ $jumlahpaket -gt 1000 ]]; then
	echo "jumlah paket yang ter-install sangat banyak"
	echo "disarankan untuk membuang paket tidak perlu"

fi