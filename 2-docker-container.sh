docker container ls -a //perintah untuk melihat container yang tersedia pada docker dekstop
docker container ls //perintah untuk melihat container yang sedang running pada docker dekstop
docker container create --name app-redis redis:latest //perintah untuk membuat container dari image redis
docker container create --name app-redis redis:latest //perintah untuk membuat container dari image redis
docker container start app-redis //perintah untuk merunning container app-redis
docker container stop app-redis //perintah untuk memberhentikan container app-redis yang sedang running
docker container rm app-redis //perintah untuk menghapus/remove container app-redis