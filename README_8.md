# Tugas 8 Flutter Form
Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

## Nama : Ied Mubaraque Sultan Salahuddine El Ayyubie
## NPM : 2106751120

***1. Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement` !***

Penggunaan Navigator seperti stack. Setiap kali `Navigator.push`dipanggil, maka akan menimpa halaman sebelumnya dengan halaman baru. Namun, `Navigator.pushReplacement` akan mengganti halaman lama dengan halaman baru. Jika menggunakan `Navigator.push`, bisa menggunakan tombol back karena terdapat halaman sebelumnya dan halaman baru yang bisa diakses kembali

***2.  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.***

- Drawer, Widget untuk navigasi yang membuat suatu layar tambahan di bagian kiri app dan bisa dimunculkan serta disembunyikan

- Form, Widget untuk inisialisasi widget apa saja yang dianggap masuk atau fields dalam form oleh Flutter sehingga bisa menerima input

- Card, Widget untuk menampilkan data-data budget dalam suatu kotak

- ListTile, Widget untuk membuat tulisan-tulisan lain dalam suatu drawer

- TextFormField, Widget untuk menerima input berupa text dari user

- DropdownButtonFormField, Wigdet untuk memungkinkan user supaya bisa memilih item dari suatu dropdown. Isi dari dropdown dibuat dengan suatu list

- TextButton, Widget untuk membuat suatu tombol yang dapat diberikan teks. Saat tombol diklik, akan mensubmit input fields form yang sudah dimasukkan user

***3.  Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).***

- `onChanged`, event yang muncul saat widget mengalami perubahan
- `onPressed`, event yang muncul saat button dipencet oleh user
- `onSaved`, event yang muncul saat suatu form telah disimpan
- `onTap`, event yang muncul saat widget dipencet oleh user

***4.   Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.***

Cara kerja Navigator mirip dengan penggunaan stack. Halaman yang pertama kali dilihat oleh user adalah halaman yang berada di top of stack. Jika kita melakukan `push`, maka halaman yang baru akan jadi top of stack. Kita dapat menggunakan `pop` untuk kembali ke halaman yang lama. Penggunaan `pushReplacement` hanya akan merubah halaman lama yang merupakan top of stack dan diganti dengan halaman baru yang sekarang menjadi top of stack.

***5.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.***

1. Menambahkan code untuk Drawer dan menambahkan menu (counter_7, Tambah Budget, Data Budget) pada Drawer serta memberikan navigasi untuk menu-menunya dengan mengganti `Navigator.pushReplacement` menjadi masing-masing page yang sesuai

2. Membuat form pada halaman baru `form.dart` dengan `MyFormPage`serta input-input yang dibutuhkan dalam form tersebut, validasi untuk input-inputnya, dan button yang diubah `onPressed`nya supaya bisa mensubmit form. Setelah form disubmit, maka akan membuat suatu objek `Budget` baru. Data-data input tersebut akan disimpan dalam suatu list yang berisi tipe data `Budget` supaya bisa diakses di halaman Data Budget pada `MyShowPage`.

3. Membuat halaman baru untuk menampilkan data budget `show.dart` dengan `MyShowPage`. Halaman ini akan menggunakan widget `Card` untuk tampilan data-data budget tersebut. `Card` akan diisikan dengan widget `Text` yang berisi data-data dari objek budget yang sudah dibuat karena sifatnya `static`. List diakses dengan menambahkan fungsi buatan dengan parameter `BuildContext` `context` dan `int` `index`. Dalam fungsi tersebut, list diakses dengan indexing menggunakan `index` dari parameter. Terdapat parameter `itemCount` supaya Flutter mengetahui panjang dari list tersebut supaya tidak error.