packet=`dpkg --get-selections | wc -l`;
# echo $packet
name=`whoami`
if [[ $packet = 2491 ]]; then
	echo "Hi $name Jumlah packet anda : $packet "
	echo ""
	echo "Packet ter-install sangat banyak " 
	echo "Silahakan buang packet-packet yang tidak perlu"
	echo ""
fi

if [[ $packet -gt 1000 ]]; then
	echo "jumlah packet anda ( $packet ) lebih dari 1000 :D "
	
fi


