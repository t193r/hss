#!/usr/bin/env bash

jalankan() {
    program=$1
    $program
}

loop=true
while [[ $loop = true ]]; do
    echo -e "Masukkan pilihan X untuk keluar"
    echo -en "Masukkan program yang mau dijalankan: "
    read aplikasi
    if [[ $aplikasi == "X" ]]; then
        echo "Quiting"
        exit 0
    fi
    command -v $aplikasi > /dev/null
    if [[ $? -eq 0 ]]; then
        jalankan $aplikasi
    else
        echo "Programnya gak ketemu, Pak!"
    fi
done
