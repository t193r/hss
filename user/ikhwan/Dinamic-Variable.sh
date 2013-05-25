# Static variable 

name=`git config --global user.name`
echo $name

if [[ $name == "ikhwan" ]]; then
	echo "Welcome ikhwan is gitHub"

elif [[ $name == "Suju" ]]; then
	echo "Permission deniel"
	echo "Access deniel"
	exit 2
fi

loginName=`whoami`
if [[ $loginName == "root" ]]; then
	echo "Welcome root"

else 
	echo "Run this scrip as ROOT privalege "
fi