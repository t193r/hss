# Git How-To Documentation for HSS

----------------------------------

## About The Architecture
Repository HSS dibagi menjadi dua jenis:

- Repo milik server yaitu [t19er/hss](https://github.com/t193r/hss)
- Repo pribadi milik partisipan yaitu *username*/hss

Prinsip kerjanya adalah, user mengerjakan tugasnya di repo pribadinya, setelah semua selesai, user mengupdate repository-nya kemudian membuat pull request untuk server. Setelah semua user membuat pull request, server akan membuat keputusan untuk menerima atau menolak pull request tadi. Jika tugas ini sudah selesai, user <b>HARUS</b> mensinkronisasikan reponya dengan repo milik server (merge dari server). Setelah merging, user baru bisa mengerjakan tugasnya kembali. Ini penting untuk menghindari konflik.

## Git Guide
Di sini akan dijelaskan mengenai penggunaan git untuk proses pembelajaran HSS dengan konteks user sudah melakukan forking di server HSS utama dan clone repo hasil fork-nya ke dalam local disk.

###How to Fork
Go to [this URL](https://github.com/t193r/hss). Kemudian klik tombol fork. Tunggu beberapa saat sampai proses fork selesai. Setelah itu, browser akan redirect ke halaman:

    https://github.com/[USERNAME]/hss

Di URL bar repo, pilih section SSH, kemudian copy link-nya. Link seharusnya seperti ini sekarang:

    git@github.com:[USERNAME]/hss.git

Kemudian di terminal, lakukan clone dengan perintah:

    root@arch ~ # git clone git@github.com:[USERNAME]/hss.git
    Cloning into 'hss'...
    remote: Counting objects: 327, done.
    remote: Compressing objects: 100% (166/166), done.
    remote: Total 327 (delta 114), reused 316 (delta 108)
    Receiving objects: 100% (327/327), 32.59 KiB | 27.00 KiB/s, done.
    Resolving deltas: 100% (114/114), done.


Setelah selesai, maka akan ada folder baru bernama:

    hss

Pindah ke direktori tersebut:

    root@arch ~ # cd hss/

Sekarang kamu punya base direktori sebagai berikut:

    |-- README.md
    |-- docs
    |-- TODO
    |-- tutorial
    |-- user

- File README.md berisi perkenalan pada HSS
- docs berisi file-file dokumentasi, misalnya catatan penting dan tutorial umum
- TODO berisi file-file tugas sesuai dengan tutorial yang ada
- tutorial berisi file-file untuk tutorial HSS
- user adalah direktori yang menyimpan tugas-tugas user

Pindah ke direktori user:

    root@arch ~/hss (git)-[master] # cd user

Lalu buat satu folder bernama [USERNAME] kamu di GIT. Misalkan username adalah johndoe:

    root@arch ~/hss/user (git)-[master] # mkdir johndoe

Pindah ke direktori johndoe

    root@arch ~/hss/user (git)-[master] # cd johndoe

Buat folder bernama TODO

    root@arch ~/hss/user/johndoe (git)-[master] # mkdir TODO

Lalu touch sebuah file kosong ke dalam direktori TODO, hal ini dilakukan agar folder bisa disinkronisasikan dengan git.

    root@arch ~/hss/user/johndoe (git)-[master] # cd TODO
    root@arch ~/hss/user/johndoe/TODO (git)-[master] # touch .gitignore

Setelah inisialisasi, pindah ke folder di atasnya kemudian inisialisasi sebuah file pesan untuk server atau apapun itu agar bisa sinkron dengan git.

    root@arch ~/hss/user/johndoe (git)-[master] # echo "echo 'Hello, world!'" > hello-world.sh
    echo "echo 'Hello, world!'" > hello-world.sh
    root@arch ~/hss/user/johndoe (git)-[master] # ls
    TODO/  hello-world.sh

Test file

    root@arch ~/hss/user/johndoe (git)-[master] # chmod +x hello-world.sh
    root@arch ~/hss/user/johndoe (git)-[master] # ./hello-world.sh
    Hello, world!

Lihat status git sekarang dengan pindah ke root directory dari HSS.

    root@arch ~/hss/user/johndoe (git)-[master] # cd ..
    root@arch ~/hss/user (git)-[master] # cd ..
    root@arch ~/hss (git)-[master] # pwd
    /root/hss
    root@arch ~/hss (git)-[master] # git status
    # On branch master
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #    user/johndoe/
    nothing added to commit but untracked files present (use "git add" to track)

Add semua file agar bisa di-track oleh git.

    root@arch ~/hss (git)-[master] # git add .
    root@arch ~/hss (git)-[master] # git status
    # On branch master
    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    #    new file:   user/johndoe/TODO/.gitignore
    #   new file:   user/johndoe/hello-world.sh
    #

Setelah semua selesai, lakukan push ke server:

    root@arch ~/hss (git)-[master] # git push

Setelah semua tugas sudah di push ke server milik kamu, sekarang saatnya kita meminta server untuk mengambil source code kita untuk dimasukkan ke dalam repo server (utama). Buka browser kamu, misalkan:

    https://github.com/johndoe/hss

Kemudian klik tombol "Pull Request" di atas kanan. Masukan judul dan pesan dari apa yang kamu kerjakan. Kemudian tunggu sampai ada balasan dari server apakah commit kamu diterima atau tidak. Jika sudah, pada terminal, kita daftarkan repo server ke dalam repo kita agar bisa disinkronisasikan.

    root@arch ~/hss (git)-[master] # git remote add server git@github.com:t193r/hss.git

Setelah itu check:

    root@arch ~/hss (git)-[master] # git remote show server
    * remote server
    Fetch URL: git@github.com:t193r/hss.git
    Push  URL: git@github.com:t193r/hss.git
    HEAD branch: master
    Remote branch:
        master new (next fetch will store in remotes/server)
    Local ref configured for 'git push':
        master pushes to master (up to date)

Lalu daftarkan branch master ke dalam server:

    root@arch ~/hss (git)-[master] # git remote set-branches server master
    root@arch ~/hss (git)-[master] # git remote show server
    * remote server
    Fetch URL: git@github.com:t193r/hss.git
    Push  URL: git@github.com:t193r/hss.git
    HEAD branch: master
    Remote branch:
        master new (next fetch will store in remotes/server)
    Local branch configured for 'git pull':
        master merges with remote master
    Local ref configured for 'git push':
        master pushes to master (up to date)

Setelah itu, pull kode terbaru dari server <b>SEBELUM MENGERJAKAN TUGAS LAINNYA</b>

    root@arch ~/hss (git)-[master] # git pull server
    From github.com:t193r/hss
    * [new branch]      master     -> server/master
    Already up-to-date.

Jika ada hal yang ingin ditambahkan dari file ini, lakukan perubahan pada repo pribadi kamu, commit, push, lalu buat pull request. Thanks.

This documents is created by <b>[blusp10it](https://twitter.com/krisanalfa)</b>.
