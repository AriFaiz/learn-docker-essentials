setelah kita dapat membuat network, kita bisa menambahkan containernya kedalam network.
containeryang terdapat didalam network yang sama bisa saling berkomunikasi (tergantung jenis driver networknya).
container bisa mengakses container lain dengan menyebutkan hostname dari containernya, yaitu nama containernya.

langkah yang harus diperhatikan dalam menghubungkan container dengan network yaitu :

# membuat container dengan network
untuk menambahkan container ke network, kita bisa menggunakan perintah "--network" ketika membuat container, contoh "docker container create --name namacontainer --network namanetwork image:tag"

langkah membuat container didalam network studikasus menggunakan images mongo :
- buat networknya terlebih dahulu "docker network create --driver bridge mongo-network"
- membuat container dari image mongo "docker container create --name mongo-db --network mongo-network --env MONGO_INITDB_ROOT_USERNAME=arimagot --env MONGO_INITDB_ROOT_PASSWORD=magotsix mongo:latest" //container ini tidak mempublish port digantikan dengan network yang nantinya akan diakses pada web mongo-express
- membuild images dari mongo-express "docker image pull mongo-express:latest"
- membuat container dari image mongo-express "docker container create --name mongodb-express --network mongo-network --publish 8081:8081 --env ME_CONFIG_MONGODB_URL:mongodb://arimagot:magotsix@mongo-db:27017/" mongo-express:latest
- menjalankan ke 2 container tersebut "docker container start mongo-db mongodb-express"

# menghapus container dari network
jika diperlukan, kita juga bisa menghapus network dengan perintah "docker network disconnect namanetwork namacontainer"

# menambahkan container ke network
jika containernya sudah terlanjur dibuat ke network dengan perintah "docker network connect namenetwork namacontainer"