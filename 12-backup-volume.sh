sampai saat tulisan ini dibuat belum ada cara membackup volume secara otomatis.
namun kita dapat memanfaatkan container untuk melakukan backup data yang ada didalam volume ke dalam archive seperti zip atau tar.gz.
lalu archivenya kita simpan di blind mount dan kita bisa menjalankan suatu script untuk melakukan backup dan restore secara otomatis.

ada beberapa tahapan yang perlu diperhatikan sebelum kita melakukan backup data volume pada container
# stop container yang menggunakan volume yang ingin di backup datanya
# buka container baru dengan "2" mount, yang akan digunakan untuk ;
    - volume yang ingin di backup
    - bind mount folder dari sistem host
# lakukan backup menggunakan container dengan cara meng-archive isi volume dan simpan di bind moaunt folder
# isi file backup sekarang yang ada di folder sistem host
# remove container yang kita gunakan untuk melakukan backup.

langkah membackup/restore data volume dengan container dengan cara #1
- buat directory baru dengan nama "mongo-backup"
- copy local directory dari "mongo-backup" /home/arimagot/.aws/docker-app/perintah-docker-dasar/mongo-data/mongo-backup
- buat container dari images nginx:latest dengan parameter sebagai berikut :
    docker container create --name nginx-backup --mount "type=bind,source=/home/arimagot/.aws/docker-app/perintah-docker-dasar/mongo-data/mongo-backup,destination=/mongo-backup" --mount "type=volume,source=mongo-data,destination=/data" nginx:latest
- jalankan container "nginx-backup"
- masuk kedalam konfigurasi container "nginx-backup" dengan parameter docker container exec -i -t nginx-backup /bin/bash
- lakukan parameter ls -l // list local
- masuk ke dir "/data" dan "/mongo-backup" selanjutnya ls -l pada "mongo-backup"
- untuk meng-archive volume data gunakan parameter "tar cvf /mongo-backup/mongo-backup.tar.gz /data" tunggu sampai backup selesai
- jika sudah ada file "mongo-backup.tar.gz" maka ketik perintah "exit" pada CLI lalu stop dan remove "nginx-backup"
- jalankan container "mongo-volume"
- lalu cek dengan "robo T3" apakah benar "mongo-volume" sudah berjalan

membackup/restore data volume dengan container dengan cara #2
# melakukan backup secara manual memang agak sedikit ribet karena harus start terlebih dahulu setelah backup lalu hapus containernya lagi
# kita bisa menggunakan parameter "run" untuk menjalankan perintah di container dan gunakan parameter "--rm" untuk melakukan otomatisasi remove container setelah perintahnya selesai berjalan.

adapun caranya sebagai berikut :
- docker image pull ubuntu:latest
- stop container "mongo-volume"
- docker container run --rm --name ubuntu-backup --mount "type=bind,source=/home/arimagot/.aws/docker-app/perintah-docker-dasar/mongo-data/mongo-backup,destination=/mongo-backup" --mount "type=volume,source=mongo-data,destination=/data" ubuntu:latest tar cvf /mongo-backup/mongo-backup.tar.gz /data
- lakukan start pada cotainer "mongo-volume"