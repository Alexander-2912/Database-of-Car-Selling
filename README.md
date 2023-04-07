# Database-of-Car-Selling

## Project Objective.
Objektif dari projek yang dibuat adalah membangun sebuah relational database untuk sebuah website yang menawarkan penjualan mobil bekas. Dalam pembuatannya, terdapat fitur-fitur dan batasan yang ada untuk diikuti. Hasil akhir dari projek ini adalah terciptanya relational database yang sudah berisi dummy dataset serta analisis sederhana terhadap data-data tersebut.

## Designing the Database
Dalam mendesain database, terdapat tahap-tahap perancangan yang perlu diikuti, yaitu:
1. Mission Statement
Dalam tahap ini, diperlukan pemahaman terhadap database yang akan dibuat, seperti fitur, batasan, hingga tujuan dari pembuatan database itu sendiri. Dalam pembuatan database kali ini, terdapat beberapa fitur dan batasannya, misalnya adalah setiap user dapat menawarkan produk yang dimilikinya lebih dari satu, setiap user harus mengisi data diri user terlebih dahulu, user dapat mencari mobil berdasarkan kriteria-kriteria, dan lain-lain. Setelah memahami hal tersebut, maka anda mendapat insight mengenai object-object (tabel) apa saja yang perlu dibuat.

2. Creating Table Structures
Dalam tahap ini, desain anda sudah memiliki tabel, kolom, beserta key. Pada pembuatan database kali ini, terdapat 4 buah tabel, yaitu tabel seller, tabel bid, tabel car_product, dan tabel location.
Seller: Tabel ini berisi product_id untuk menyimpan id produk yang dijual seller, kota_id untuk menyimpan id kota seller, seller_id untuk menyimpan id seller, nama untuk menyimpan nama seller, email untuk menyimpan email seller, dan no_telp untuk menyimpan nomor telepon seller.
Bid: Tabel ini berisi bid_id (primary key) untuk menyimpan id penawaran, product_id untuk menyimpan id produk yang ditawar, user_id untuk menyimpan id user yang melakukan penawaran, bid_date untuk menyimpan tanggal terjadinya penawaran, price untuk menyimpan harga mobil sebelum ditawar, bid_price untuk menyimpan harga mobil setelah ditawar, dan bid_status untuk menyimpan status penawaran.
Car_product: Tabel ini berisi product_id (primary key) untuk menyimpan id produk, kota_id untuk menyimpan id kota mobil tersebut dijual, brand untuk menyimpan brand mobil yang dijual, model untuk menyimpan model mobil yang dijual, body_type untuk menyimpan tipe body mobil yang dijual, year untuk menyimpan tahun mobil tersebut dibuat, price untuk menyimpan harga mobil tersebut, dan date_post untuk menyimpan tanggal mobil tersebut mulai dijual.
Location: tabel ini berisi kota_id (primary key) untuk menyimpan id suatu kota, nama_kota untuk menyimpan nama kota, dan kordinat untuk menyimpan kordinat kota tersebut.

3. Determine Table Relationships
Dalam tahap ini, tabel-tabel yang dibuat akan ditentukan jenis relasinya, serta foreign key untuk setiap tabel. Tabel bid memiliki relasi one to many (1-to-many) dengan tabel car_product, tabel seller memiliki relasi one to many (1-to-many) dengan tabel car_product, tabel location memiliki dua relasi, yaitu one to many (1-to-many) dengan tabel seller, dan one to many (1-to-many) dengan tabel car_product. Disetiap tabel terdapat key yang berfungsi sebagai foreign key, yaitu:
Seller: product_id dan kota_id
Bid: product_id
Car_product: kota_id
Location: -

4. Determine Business Rules
Dalam tahap ini, field-field yang telah dibuat perlu diaplikasikan constrain.
```
Seller: seller_id int NOT NULL
product_id int NOT NULL FOREIGN KEY
kota_id int NOT NULL FOREIGN KEY
nama VARCHAR(40) NOT NULL
email VARCHAR(40) NOT NULL
no_telp VARCHAR(40) NOT NULL
 ```
 ```
Bid: bid_id int PRIMARY KEY
user_id int NOT NULL
product_id int NOT NULL FOREIGN KEY
bid_date DATE NOT NULL
price int NOT NULL
bid_price int NOT NULL
bid_status VARCHAR(20) NOT NULL
```
```
Car_product: product_id int PRIMARY KEY
kota_id int NOT NULL FOREIGN KEY
brand VARCHAR(40) NOT NULL
model VARCHAR(40) NOT NULL
body_type VARCHAR(40) NOT NULL
year int NOT NULL
price int NOT NULL
date_post DATE NOT NULL
Location: kota_id int PRIMARY KEY
nama_kota VARCHAR(40) NOT NULL
kordinat POINT NOT NULL
```

5. Implementing a Relational Database
Tahap terakhir dalam mendesain database adalah membuat sebuah Entity Relationship Diagram atau yang sering disebut juga dengan ERD. Fungsi dari Entity Relationship Diagram adalah untuk menunjukkan tabel, field, relasi, key, serta constraint yang telah dibuat pada tahap sebelumnya.

![image](https://user-images.githubusercontent.com/118685091/230657229-4d070401-55f7-47cf-9b66-747ddfb13955.png)

Setelah membuat Entity Relationship Diagram, kita dapat mulai menggunakan Data Definition Language di pgAdmin4 untuk membuat tabel, field, relasi, key, dan constraint yang konsepnya sudah dibuat dalam bentuk ERD.

![image](https://user-images.githubusercontent.com/118685091/230657417-8250e7be-00c0-4a9a-a02c-d70c9f48bd1d.png)

![image](https://user-images.githubusercontent.com/118685091/230657443-1f1c15f7-6851-4163-9aae-145713f4e486.png)

![image](https://user-images.githubusercontent.com/118685091/230657524-e9f03bc8-1870-4ce6-b801-e512947ff6fa.png)

![image](https://user-images.githubusercontent.com/118685091/230657476-2394946c-bb5f-49a7-8a1f-f333138c6d10.png)


Setelah kita membuat query Data Definition Language, query-query tersebut dapat kita run dan kemudian akan terbentuk tabel-tabel beserta dengan atributnya.

## Populating the Database
Selanjutnya adalah membuat dummy dataset, terdapat beberapa cara untuk membuat dummy data, diantaranya adalah menggunakan website data generator atau python. Pada pembuatan database kali ini, saya menggunakan website data generator, yaitu https://www.mockaroo.com/.
Setelah mendapatkan data dari website tersebut, dummy datasetnya dapat dipindahkan kedalam Visual Studio Code menggunakan bahasa pemrograman Python untuk kemudian dijadikan kedalam bentuk csv. Masukkan dummy data tersebut kedalam sebuah list, urutan dan tipe data berpengaruh dalam pembuatannya.
Setelah memasukkan semua dataset, selanjutnya kita akan mengubah kumpulan data tersebut menjadi csv menggunakan library pandas.
Setelah melakukan running program, maka akan muncul file csv didalam folder yang sama dimana kita menyimpan file python tersebut.
Kemudian, kita dapat kembali ke pgAdmin4 untuk mulai mengimport file-file csv tersebut kedalam tabel-tabel yang telah kita buat di tahap sebelumnya. Untuk memasukkan dataset yang telah kita buat, kita perlu mencari tabel di database yang digunakan. Klik database, kemudian schemas, dan tables, maka akan muncul tabel-tabel yang ada.
Kemudian, right click pada tabel yang ingin kita masukkan datanya dan pilih import/export file.
Setelah ditekan, akan muncul notifikasi seperti berikut.
pada bagian Filename, kita pilih file yang sesuai dengan tabel yang ingin diimport datanya. Pada contoh diatas, saya ingin memasukkan data pada tabel bid, maka saya memilih file csv yang berisi dengan data-data tabel bid. Apabila sudah sesuai, maka tekan OK.
Setelah ditekan OK, maka akan muncul notifikasi untuk melihat proses import data, apabila ditekan akan muncul seperti gambar diatas. Pada bagian object, dapat dilihat file yang kita import kan. Pada bagian status, dapat dilihat status import kita. Apabila berhasil, maka akan tertulis "Finished".
Kita dapat menggunakan query diatas untuk melihat isi keseluruhan dari tabel kita.
Sebagai contoh, gambar diatas adalah hasil dari query (Select * From seller). Query tersebut menunjukkan isi dari tabel seller.
Retrieve Data
Retrieve data atau pengambilan data adalah proses mengidentifikasi dan mengekstraksi data dari basis data, berdasarkan kueri yang diberikan oleh pengguna atau aplikasi. Retrieve data dibagi menjadi 2, yaitu transactional query dan analytical query
1. Transactional Query
Query dibawah digunakan untuk menampilkan kolom product_id, brand, model, year, dan price dari tabel car_product dengan kriteria year lebih besar sama dengan 2015.
Query dibawah digunakan untuk memasukkan data kedalam tabel bid dengan value (90, 1, 2, '2022–02–14', 215000000, 220000000, 'sent') secara berurutan kedalam kolom tabel bid
Query dibawah digunakan untuk menampilkan product_id, brand, model, year, price, date_post dari tabel seller yang digabung dengan tabel car_product dengan kriteria nama seller = 'Masha Branscomb' dengan urutan dari tanggal terbaru
Query dibawah digunakan untuk menampilkan kolom product_id, brand, model, year, dan price dari tabel car_product dengan kriteria model memiliki kata 'Yaris' dan diurutkan dari yang harga yang termurah
Function dibawah digunakan untuk menghitung jarak antar satu kota dengan kota lainnya. Function dibawah disimpan dengan nama 'distance', yang akan digunakan untuk query selanjutnya
Query dibawah digunakan untuk menampilkan kolom product_id, brand, model, year, price dari tabel car_product, dan function distance yang telah dibuat sebelumnya. Didalam function distance akan memuat dua titik kota yang akan dihitung jaraknya, yang pertama adalah kota dari seller, dan yang kedua adalah kota dari car_product. Kriteria untuk kota adalah kota_id = 3173.
2. Analytical Query
Materialized View dibawah digunakan untuk menghitung jumlah produk dari masing masing model yang tersedia dalam car_product. Materialized View tersebut disimpan dengan nama jumlah_model dan akan digunakan pada query selanjutnya
Query dibawah digunakan untuk menampilkan model, count_product, dan count_bid. Query tersebut menggabungkan tabel car_product dengan tabel bid, dan materialized view yang telah dibuat sebelumnya, yang kemudian digroup dengan model dan count_product dan diurutkan secara ascending berdasarkan count_bid.
Query dibawah digunakan untuk menampilkan kolom nama_kota, brand, model, year, price, dan avg_car_city yang merupakan rata rata harga mobil per kota dari tabel car_product. Query tersebut menggabungkan tabel car_product, seller dan location yang kemudian digroup menggunakan nama_kota, brand, model, year, dan price, dan diurutkan secara ascending menggunakan avg_car_city
Query dibawah digunakan untuk menampilkan kolom model, user_id, first_bid_date, next_bid_date, first_bid_price, dan next_bid_price. Query tersebut menggabungkan tabel car_product dengan tabel bid agar mendapatkan harga dan tanggal bid. Pada query tersebut kolom next_bid_date dan next_bid_kosong tidak terisi (null) karena masing masing mobil hanya di bid satu kali saja dengan orang yang sama.
Query dibawah digunakan untuk menampilkan model, avg_price , dan avg_bid_6month. Query dibawah menggabungkan tabel car_product dan tabel bid. avg_price berisi rata-rata harga mobil yang digroup dengan model mobil tersebut. avg_bid_6month berisi rata rata harga bid selama 6 bulan terhadap mobil dan model yang telah digroup sebelumnya
Query dibawah digunakan untuk menampilkan kolom brand, model, rata-rata dari bulan 1 sampai bulan 6 secara terpisah. Query tersebut menggunakan CASE untuk membagi kolom rata-rata bid tersebut sesuai dengan bulan dilakukannya bid. Query tersebut juga membatasi produk yang ditampilkan, yaitu hanya model 'Toyota Yaris' saja.
