#!/usr/bin/env bash

loop=true

showOptions() {
	echo "1.geany"
	echo "2.msfconsole"
	echo "3.wlan0"
	echo "4.install paket"
	echo "5.show option"
	echo "6.liferea"
	echo "7.exit"
}

bukageany() {
	command -v geany > /dev/null
	if [[ $? -eq 0 ]]; then
		geany
	else 
		echo -e "binary file for geany not found"
	fi
}

mulaimsfconsole() {
	command -v msfconsole > /dev/null
	if [[ $? -eq 0 ]]; then
		msfconsole
		else
			echo -e "binary file for msfconsole not found"
	fi
}

wlan0() {
	command -v wlan0 > /dev/null
	if [[ $? -eq 0 ]]; then
		ifconfig wlan0
	else
		echo -e "binary file for ifconfig wlan0 not found"
	fi
}

installpaket() {
	echo "1.geany
2.chromium"
	echo -e "pilih paket yang mau di install"
	echo -elifn "masukan pilihan: "
	read paket
	if [[ "$paket" == "1" ]]; then
		apt-get install geany
	elif [[ "$paket" == "2" ]]; then
		apt-get install chromium
	else 
		echo "salah pilih"
	fi

}

jalaninLifera() {
	command -v liferea > /dev/null
	if [[ $? -eq 0 ]]; then
		liferea
	else
		echo "Liferea belum keinstall."
		echo "Mau install? [Y|n]: "
		read isInstall;
		if [[ $isInstall == "Y" || $isInstall == "y" || $isInstall == "" ]]; then
			installDependency liferea;
		elif [[ $isInstall == "N" || $isInstall == "n" ]]; then
			echo "Kamu harus install liferea buat ngejalanin fungsi ini"
		fi
	fi
}

installDependency() {
	echo "apt-get install" $@;
	apt-get install $@;
}

showOptions

while [[ $loop = true ]]; do
	echo -en "masukan pilihan :"
	read pilihan
	if [[ $pilihan == "1" ]]; then
		bukageany
	elif [[ $pilihan == "2" ]]; then
		mulaimsfconsole
	elif [[ $pilihan == "3" ]]; then
		wlan0
	elif [[ $pilihan == "4" ]]; then
		installpaket
	elif [[ $pilihan == "5" ]]; then
		showOptions
	elif [[ $pilihan == "6" ]]; then
		jalaninLifera
	elif [[ $pilihan == "7" ]]; then
		echo "good bye"
		loop=false
	else
		echo "pilihan invalid"
	fi
done
