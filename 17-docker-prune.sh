saat kita menggunakan docker, kadang ada kalanya kita ingin membersihkan hal-hal yang sedah tidak digunakan lagi di dalam docker, misalnya container yang sudah di stop, image yang tidak lagi digunakan oleh container atau bahkan volume yang sudah tidak digunakan oleh container.
fitur untuk membersihkan data secara otomatis di docker bernama "prune"
hampir semua perintah di docker mendukung "prune"

peintah menggunakan prune 
- docker image prune //perintah untuk menghapus semua image yang tidak digunakan oleh container
- docker container prune //perintah untuk menghapus semua container yang sudah stop
- docker network prune //perintah untuk menghapus semua network yang tidak digunakan oleh container
- docker volume prune //perintah untuk menghapus semua volume yang tidak digunakan oleh container
- docker system prune //perintah untuk menghapus semua container, image dan network (tidak termasuk volume) yang tidak digunakan oleh docker