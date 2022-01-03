saat kita membuat container di docker, secara default container akan saling terisolasi satu sama lain. jadi apabila kita mencoba memaggil antar container, bisa dipastikan bahwa kita tidak akan bisa melakukannya.
docker memiliki fitur network yang bisa digunakan untuk memebuat jaringan di dalam docker.
dengan menggunakan network, kita dapat mengoneksikan container satu dengan yang lain dalam satu network yang sama.
jika beberapa container terdapat satu network yang sama, maka secara otomatis container tersebut bisa saling berkomunikasi.

nb : network itu mirip seperti images/forum maka kita dapat memanagemen network tersebut

network driver 
saat membuat network di docker, kita perlu menentukan driver yang ingin digunakan. ada banyak driver yang bisa digunakan, tapi ada beberapa driver yang ada syaratnya sebuah driver bisa kita gunakan. berikut adalah contoh dari beberapa driver yang populer, antara lain :
# bridge yaitu driver yang digunakan untuk memebuat network secara virtual yang memungkinkan container yang terkoneksi di bridge yang sama bisa saling terkoneksi.
# host yaitu driver yang digunakan untuk membuat network yang sama dengan sistem host. host hanya dapat berjalan di docker linux, tidak bisa digunakan di mac os dan windows (docker dekstop). 
# none yaitu driver untuk membuat network yang tidak bisa berkomunikasi (defaultnya tidak bisa berkomunikasi).

parameter yang digunakan dalam studi kasus network antara lain :
- docker network ls //untuk melihat data network
- docker network create --driver bridge network-bridge //untuk membuat network baru dengan nama "network-bridge" menggunakan driver "bridge"
- docker network rm network-bridge //untuk menghapus network "network-bridge", network tidak bisa di hapus apabila masih digunakan oleh container. kita harus menghapus container yang ada di network itu terlebih dahulu