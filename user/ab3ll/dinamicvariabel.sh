nama=$(git config --global user.name);
echo $nama;

if [[ $nama == "ab3ll" ]]; then
	echo "Permission denied"
	echo "Access denied"
	exit 2
else
	echo "Welcom "
fi 

loginName= 'whoami';
if [[ loginName == "root" ]]; then
	echo "Welcom root"
	else
		echo "Run this script as ROOt privilage"
fi
