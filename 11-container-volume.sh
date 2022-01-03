volume yang sudah dibuat dapat digunakan di container
keuntungan menggunakan volume :
# jika container di/terhapus, maka data akan tetap aman di volume

cara menggunakan volume di container sama seperti menggunakan bind mount, kita dapat menggunakan parameter --mount namun dengan menggunakan type volume dan source nama volume
docker container create --name mongo-volume --mount "type=volume,source=mongo-data,destination=/data/db" --publish 20719:20717 --env MONGO_INITDB_ROOT_USERNAME=arimagot --env MONGO_INITDB_ROOT_PASSWORD=arimagot mongo:latest

note :
# pertama buat volume dengan nama "mongo-data"
# membuat container dengan nama "mongo-data"
# membuat admin db mongo dengan user=arimagot password=arimagot
# membuat container dengan image mongo:latest
# dapat diakses melalui port 27019