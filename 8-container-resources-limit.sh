pada saat membuat container, maka container itu sendiri akan menggunakan semua CPU dan Memory yang diberikan disediakan Docker (Mac/Windows) serta akan menggunakan semua sistem Host yang disediakan oleh Linux.
apabila terjadi kesalahan, misal container menggunakan semua CPU dan Memory. Maka akan berdampak pada peforma container yang lain atau bahkan ke sistem Host
demi menghindari hal tersebut ada baiknya saat kita membuat container, perlu menentukan resource limit terhadap containernya.

    berikut adalah hal yang harus diperhatikan saat menentukan resource limit antara lain :
    # Memory --> menambah ukuran dengan bentuk "b" ('byte'), "k" ('kilo byte'), "m" ('mega byte'), "g" ('giga byte') dengan menggunakan parameter --memory
      contoh 100m --> 100mb [mega byte]

    # CPU --> menentukan berapa jumlah CPU yang bisa digunakan oleh container dengan parameter --cpus
      contoh sebuah container diset dengan nilai 1.5, artinya container bisa menggunakan satu setengah CPU container

berikut adalah perintah menentukan resource limit saat create sebuah container dengan menggunakan image nginx:lates

docker container create --name app-nginx-small --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest