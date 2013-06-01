#!/usr/bin/env bash

kondisi="ok"
while [[ $kondisi == "ok" ]]; do
    echo -en "Masukkan password: "
    read password
    if [[ $password == "toor" ]]; then
        kondisi="no"
        echo $kondisi
    else
        echo $kondisi
    fi
done
