#!/usr/bin/env bash

loop=true

showOptions() {
    echo "1. Tampilkan Tanggal"
    echo "2. Tampilkan Informasi Kernel"
    echo "3. Buka ettercap"
    echo "4. Show options"
    echo "5. Exit"
}

tampilkanTanggal() {
    command -v date > /dev/null
    if [[ $? -eq 0 ]]; then
        date
    else
        echo -e "Binary file for date not found"
    fi
}

tampilkanKernelInfo() {
    command -v uname > /dev/null
    if [[ $? -eq 0 ]]; then
        uname -a
    else
        echo -e "Binary file for uname not found"
    fi
}

bukaEttercap() {
    command -v ettercap > /dev/null
    if [[ $? -eq 0 ]]; then
        ettercap -G
    else
        echo -e "Binary file for ettercap not found"
    fi
}

showOptions

while [[ $loop = true ]]; do
    echo -en "Masukkan pilihan: "
    read pilihan
    if [[ $pilihan == "1" ]]; then
        tampilkanTanggal
    elif [[ $pilihan == "2" ]]; then
        tampilkanKernelInfo
    elif [[ $pilihan == "3" ]]; then
        bukaEttercap
    elif [[ $pilihan == "4" ]]; then
        showOptions
    elif [[ $pilihan == "5" ]]; then
        echo "Bye bye"
        loop=false
    else
        echo "Pilihan invalid!"
    fi
done
