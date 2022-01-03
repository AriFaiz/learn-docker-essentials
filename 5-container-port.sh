agar container dapat diakses pada localhost(diakses keluar) maka gunakan metode port forwarding
cara menggunakannya adalah membuat container dengan menyisipkan port forwarding

docker container create --name namacontainer --publish porthost:portcontainer image:tag
docker container create --name app-nginx --publish porthost:portcontainer nginx:latest 

disini saya menggunakan image dari web server nginx