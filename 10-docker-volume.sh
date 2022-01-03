# docker volume ini mirip dengan bind mounts, bedanya dalam volume terdapat management volume yang dimana kita dapat melihat, membuat dan menghapus volume
# volume bisa disamakan dengan storage yang digunakan untuk menyimpan data.

perbedaan volume dengan bind mounts :
- bind mounts data disimpat pada sistem host 
- volume data dimanage oleh docker

parameter pemanggilan volume :
- docker volume ls //untuk melihat daftar volume
- docker volume create mongo-volume //perintah untuk membuat volume dengan nama mongo-volume
- docker volume rm mongo-volume //perintah untuk menghapus volume dengan nama mongo-volume
nb : volume yang tidak digunakan bisa dihapus, tetapi volume yang sedang digunakan tidak dapat dihapus melainkan menghapus containernya terlebih dahulu.
