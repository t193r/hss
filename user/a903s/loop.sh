#!/usr/bin/env bash

# pressEnterToExit=true
# while [[ $pressEnterToExit == "true" ]]; do
# 	echo "Press enter to exit"
# 	read input
# 	if [[ $input == "" ]]; then
# 		echo "Will exit..."
# 		sleep 3
# 		pressEnterToExit=false
# 	else
# 		echo "Invalid..."
# 		pressEnterToExit=true
# 	fi
# done



#echo "###########################"
#echo "# 1. update               #"
#echo "# 2. upgarde              #"
#echo "# 3. exit                 #"
#echo "###########################"


#echo -en "Select no yang anda inginkan:"

update="apt-get update"
upgrade="apt-get upgrade"
keluar="exit"

if [[ $update == "1" ]]; then
	#statements
elif [[ $upgrade == "2" ]]; then
	#statements
elif [[ $keluar == "3" ]]; then
		#statements
fi