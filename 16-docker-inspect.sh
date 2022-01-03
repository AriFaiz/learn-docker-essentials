docker memiliki vitur bernama inspect, yang bisa digunakan di image, container, volume dan network.
dengan fitur ini kita dapat melihat detail dan hal yang berkaitan image, container, volum serta network yang ada di docker
setelah kita mendownload image atau membuat container, network dan volume. terkadang kita ingin melihat detail dari tiap hal tersebut.
misal kita ingin melihat detail dari container yang kita buat, perintah apa yang digunakan? environtment apa yang digunakan? atau bahkan port berapa yang digunakan oleh container tersebut.
fitur inspect juga dapat melihat detail dari image yang kita gunakan. mulai dari detail perintah yang digunakan, environtment variabel maupun portnya.

menggunakan inspect
- docker image inspect "namaimage:tag" //perintah untuk melihat detail image
- docker contaoner inspect "namacontainer" //perintah untuk melihat detail container
- docker volume inspect "namavolume" //perintah untuk melihat detail volume
- docker network inspect "namanetwork" //perintah untuk melihat detail network