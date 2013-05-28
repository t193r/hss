#!/usr/bin/env bash

jumlah=`dpkg -l | grep ii | wc -l`;
echo " jumlah paket yang terinstall $jumlah"

if [[ $jumlah -gt 1000 ]]; then
	echo " jumlah paket yang terinstall terlalu banyak"
	echo " disarankan untuk membuang paket yang tidak perlu"
fi