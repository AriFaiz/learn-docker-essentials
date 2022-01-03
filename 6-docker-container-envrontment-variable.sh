docker container create --name namacontainer --env KEY="value" --env KEY2="value" image:tag 
    
    contoh :
        docker container create --name app-mongo-env --publish 8081:27017 --env MONGO_INITDB_ROOT_USERNAME=arimagot --env MONGO_INITDB_ROOT_PASSWORD=magotsix mongo:latest
        //perintah untuk menambahkan envirotment variable pada app-mongo-env, bisa menggunakan --env atau -e
        note : pada studikasus ini saya menggunakan image mongodb dengan port 27017 yang nantinya akan di publish ke lokal leptop saya dengan port 8081 dengan username=arimagot dan password=magotsix