# Tugas 9 Integrasi Web Service pada Flutter

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

## Nama : Ied Mubaraque Sultan Salahuddine El Ayyubie
## NPM : 2106751120

***Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?***

Iya bisa, pengambilan data JSON menggunakan model sifatnya opsional atau tidak harus. Akan tetapi, apabila kita tidak menggunakan model, maka untuk mengakses data-data dari file JSON tersebut akan menjadi sulit. Hal ini dikarenakan model akan mempermudah kita dalam menyimpan dan mengakses data-data JSON.

***Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.***

- `FutureBuilder`, Widget yang terupdate berdasarkan data terakhir (snapshot) yang berinteraksi dengan `Future`. Fungsinya untuk menampilkan data-data dari endpoint website JSON.
- `InkWell`, Widget suatu kotak yang bisa diklik oleh user. Fungsinya untuk memberikan `onTap()` pada setiap film untuk isi detail dari film.
- `Checkbox`, Widget untuk membuat suatu checkbox yang bisa diklik dengan nilai `bool`. Fungsinya untuk mengganti nilai dari `watched` dari suatu film.
- `CircularProgressIndicator`, Widget yang menampilkan proses loading berupa lingkaran yang berputar-putar. Fungsinya untuk menunjukkan proses loading data dari endpoint JSON.
- `Text`, Widget yang berfungsi untuk menampilkan teks. Fungsinya untuk menampilkan data-data sebagai suatu teks dari endpoint JSON.
- `TextButton`, Widget button yang bisa diberikan tulisan. Fungsinya untuk memberikan tombol back dari setiap film ke `My Watch List`.

***Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.***

1. Install dan melakukan import untuk dependensi `http` pada proyek Flutter
2. Membuat model dengan memanfaatkan website `Quicktype` dari data pada endpoint JSON
3. Melakukan `http request` dari endpoint website data JSON dengan menggunakan dependency `http` dan membuat fungsi `fetchToDo()` ke dalam suatu list yang bisa diakses oleh `FutureBuilder`
4. Menggunakan `FutureBuilder` untuk menampilkan data-data JSON dengan mengakses `snapshot` beserta fields dan nama variabelnya masing-masing.

***Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.***

1. Menambahkan `Drawer` dari code sebelumnya dengan menambahkan page untuk `MyWatchPage`
2. Membuat model untuk film dengan memasukkan data JSON dari endpoint dan menggunakan `Quicktype`. Lalu, ditaruh di file `models.dart`.
3. Melakukan install terhadap dependensi http dan melakukan import untuk melakukan fetch data dengan method `fetchToDo()` dengan URL dari website Heroku
4. Menampilkan data-data dari endpoint dengan menggunakan `FutureBuilder` dan menggunakan Wiget `InkWell` supaya setiap film bisa diklik dengan memodifikasi `onTap()` dimana akan membuka page baru berisi detail-detail lain mengenai film tersebut. Page ini memiliki parameter `key` dan `Fields` dari tiap film supaya bisa mengakses film yang diinginkan. Lalu, `MyDetailPage` akan menampilkan detail-detail lain dari parameter `Fields` dari film yang sudah dipassing sebelumnya.
5. Menambahkan tombol back pada setiap halaman detail-detail film.