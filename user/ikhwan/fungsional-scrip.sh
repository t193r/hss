#!/usr/bin/env bash
clear
loop=true

# -----------------------------------showOptions-----------------------------------
showOptions(){
	echo ""
	echo "1. Informasi user"
	echo "2. Informasi kernel"
	echo "3. Menggunakan tool"
	echo "4. update or upgrade system"
	echo "5. show options"
	# echo "6. WiFire (blusp10it)"
	echo "6. Exit"
}
# -----------------------------------informasi user-----------------------------------
user(){
	command -v whoami > /dev/null
	if [[ $? -eq 0 ]]; then
		whoami 
		echo ""
	else
		echo -e "Run this script as ROOT privilege"
	fi
}
# -----------------------------------informasi kernel-----------------------------------
kernel(){
	command -v uname > /dev/null
	if [[ $? -eq 0 ]]; then
		uname -a
		echo ""
	else	
		echo -e "Binary file for uname not founf"
	fi
}
# -----------------------------------menggunakan tool-----------------------------------
tool(){
	command -v whoami > /dev/null
	if [[ $? -eq 0 ]]; then
	kondisi=true
		while [[ $kondisi == true ]]; do
		echo -en "Menggunakan  tool"
		echo -e "\b
		V|v) vlc 
		H|h) htop
		S|s) SET
		M|m) metasploit
		E|e) Ettercap 
		X|x) Kembali kekondisi awal"
		echo -en "Pilihan :"
		read aplikasi;
			if [[ $aplikasi == 'V' ]] || [[ $aplikasi == 'v' ]]; then
					gnome-terminal --window -e "vlc" 
			elif [[ $aplikasi == 'H' ]] || [[ $aplikasi == 'h' ]]; then
					gnome-terminal --window -e 'htop'
			elif [[ $aplikasi == 'S' ]] || [[ $aplikasi == 's' ]]; then
					gnome-terminal --window -e 'se-toolkit'
			elif [[ $aplikasi == 'M' ]] || [[ $aplikasi == 'm' ]]; then
					gnome-terminal --window -e 'msfconsole'
			elif [[ $aplikasi == 'E' ]] || [[ $aplikasi == 'e' ]]; then
					gnome-terminal --window -e 'ettercap -G'
			elif [[ $aplikasi == 'X' ]] || [[ $aplikasi == 'x' ]]; then
				kondisi=false
				clear
				showOptions
			else
				echo "aplikasi not found"
				clear
				kondisi=false
				showOptions
			fi
	done
	fi
}
# -----------------------------------update or upgrade-----------------------------------
update(){
	clear
	
	echo -en "Melakukan (update or upgrade)"
	echo -e "\b
	|U)-> update.
	|G)-> upgrade.
	|D)-> dist-upgrade."
	echo -en "Pilihan :"

	read keputusan 
	if [[ $keputusan == *[U/u]* ]]; then gnome-terminal -e "apt-get update" 
		elif [[ $keputusan == *[G/g]* ]]; then gnome-terminal -e "apt-get upgrade" 
		elif [[ $keputusan == *[D/d]* ]]; then gnome-terminal -e "apt-get dist-upgrade"
		elif [[ $keputusan == "" ]]; then
		echo "Kembali ke-kondisi awal" 
		showOptions
		echo "" 
	else 
		echo "invalite"
		showOptions
	fi
	
	}

# wifi(){
# 	gnome-terminal --window -e 'bash /root/WiFire/WiFire.sh'
# 	clear
# }

showOptions
while [[ $loop == true ]]; do
	echo -en "Masukkan pilihan :"	
	read pilihan 
	if [[ $pilihan == "1" ]]; then
		user
	elif [[ $pilihan == "2" ]]; then
		kernel
	elif [[ $pilihan == "3" ]]; then
		tool
	elif [[ $pilihan == "4" ]]; then
		update
	elif [[ $pilihan == "5" ]]; then
		showOptions
	# elif [[ $pilihan == "6" ]]; then
	# 	wifi
	elif [[ $pilihan == "6" ]]; then
		echo "Bye bye"
		loop=false
	else
		echo "pilihan invalite"

	fi
done
