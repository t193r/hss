!/usr/bin/env bash

clear
loop=true

# show Option..................................
showOption(){
echo "####################################"
echo "# 1. User Information    			 #"
echo "# 2. Kernel Information  			 #"
echo "# 3. Use Tool      	 			 #"
echo "# 4. update or upgrade System      #"
echo "# 5. Show Option    				 #"
echo "# 6. WiFire (blusploit)     		 #"
echo "# 7. exit    						 #"
echo "####################################"
}

echo -en "Select Option you want use:"

# User Information...........................
user(){
	command -v whoami > /dev/null
	if [[ $? -eq 0 ]]; then
		uname -a
		echo ""
	else
		echo -e "Run this script as ROOT privilege"
	fi
}

# Kernel Information............................
Kernel(){
	command -v uname > /dev/null
	if [[ $? -eq 0 ]]; then
		uname -a 
		echo ""
	else
		echo -e "Binary your name file is not found"
	fi
}

# Use Tool..............................................
Tool (){
	command -V whoami > /dev/null
	if [[ $? -eq 0 ]]; then
		condition=true
		while [[ $condition == true ]]; do
			echo -en "used Tool"
			echo -e "\b
			V|v) vlc
			H|h) htop
			S|s) SET
			M|m) metasploit
			E|e) ettercap
			X|x) back to start condition"
			echo -en "Option:"
			read tool
			if [[ $tool == 'V/v' ]]; then
				gnome-terminal --window -e "vlc"
			elif [[ $tool == 'H/h' ]]; then
					gnome-terminal --window -e "htop"
				elif [[ $tool == 'S/s' ]]; then
						gnome-terminal --window -e "se-toolkit"
					elif [[ $tool == 'M/m' ]]; then
							gnome-terminal --window -e "msfconsole"
						elif [[ $tool == 'E/e' ]]; then
								gnome-terminal --window -e "ettercap -G"
							elif [[ $tool == 'X/x' ]]; then
									condition=false
									clear
									showOption
			fi
		done
	fi

}

# update or upgrade...........................................
update(){
	clear

	echo -en "Running (update or upgrade)"
	echo -e "\b
	U|u) update
	G|g) upgrade
	D|d) dist-upgrade"
	echo -en "Option:"

	read action
	if [[ $action == *[U/u]* ]]; then
		gnome-terminal -e "apt-get update"
	elif [[ $action == *[G/g]* ]]; then
			gnome-terminal -e "apt-get upgrade"
		elif [[ $action == *[D/d]* ]]; then
				gnome-terminal -e "apt-get dist-upgrade"
				echo " Back to start condition"
				showOption
				echo ""
			else 
				echo "Invalid"
				showOption
	fi
}

# WiFire......................................................
wifi(){
	gnome-terminal --window -e 'bash /root/WiFire.sh'
	clear
}

showOption
while [[ $loop == true ]]; do
	echo -en "Input Option:"
	read Option
	if [[ $Option == "1" ]]; then
		user
	elif [[ $Option == "2" ]]; then
			Kernel
		elif [[ $Option == "3" ]]; then
				tool
			elif [[ $Option == "4" ]]; then
					update
				elif [[ $Option == "5" ]]; then
						showOption
					elif [[ $Option == "6" ]]; then
							wifi
						elif [[ $Option == "7" ]]; then
								echo "Goog Bye"
								loop=false
								else
									echo "Choose Option is ERROR"
									echo "Please insert your Option"
									
	fi
done