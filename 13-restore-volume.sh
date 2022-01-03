setelah melakukan backup volume ke dalam file archive, kita bisa menyimpan file backup archive tersebut ke tempat yang lebih aman, misalnya ke cloud storage.
sekarang kita akan coba melakukan restore dan backup ke volume baru. yang bertujuan untuk memastikan data backup yang kita lakukan tidak corrupt.

tahapan untuk melakukan restore :
# buat volume baru untuk lokasi restore data backup
# buat container baru dengan 2 mount
    - volume baru untuk restore backup
    - bind mount dari sistem host yang berisi file backup
# lakukan restore menggunakan container container dengan cara meng-extract isi file backup ke dalam volume
# isi file backup sekarang sudah di restore ke volume
# remove container yang kita gunakan untuk melakukan restore
# volume baru yang berisi data backup siap digunakan oleh container baru

langkah untuk melakukan restore :
# buat volume baru "mongo-restore" docker volume create mongo-restore
# docker container run --rm --name ubuntu-restore --mount "type=bind,source=/home/arimagot/.aws/docker-app/perintah-docker-dasar/mongo-data/mongo-backup,destination=/mongo-backup" --mount "type=volume,source=mongo-restore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /mongo-backup/mongo-backup.tar.gz --strip 1"
# setelah selesai melakukan extract pada file "mongo-backup.tar.gz" maka pastikan kembali bahwa container "ubuntu-restore" sudah di remove by print
# selanjutnya ketikan parameter berikut untuk membuat volume baru docker container create --name mongo-restore --publish 27020:27017 --mount "type=volume,source=mongo-restore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=arimagot --env MONGO_INITDB_ROOT_PASSWORD=arimagot mongo:latest
# jalankan container "mongo-restore"
# test koneksi data menggunakan tools "robo 3T"