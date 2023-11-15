# Pembahasan Tugas-tugas PBP
# Daftar Isi
* [Identitas](#identitas-penulis)
* [Tugas 7](#tugas-7)
* [Tugas 8](#tugas-8)
# Identitas Penulis
Nama    : Patrick Samuel Evans Simanjuntak<br>
NPM     : 2206028251<br>
Kelas   : PBP C<br>

# Tugas 7
<details close>
<summary>Click here to see Tugas 7</summary>

## Daftar Isi Tugas 7
* [Perbedaan Utama antara Stateless dan Stateful Widget](#perbedaan-utama-antara-stateless-dan-stateful-widget-dalam-konteks-pengembangan-aplikasi-flutter)
* [Seluruh Widget yang Saya Gunakan pada Tugas Ini](#seluruh-widget-yang-saya-gunakan-pada-tugas-ini)
* [Langkah-langkah Pembuatan Aplikasi Flutter](#langkah-langkah-pembuatan-aplikasi-flutter)
## Perbedaan Utama antara Stateless dan Stateful Widget dalam Konteks Pengembangan Aplikasi Flutter
Stateless widget adalah widget yang statis. Stateless widget tidak dapat berubah apabila diberikan perlakuan oleh pengguna. Di sisi lain, stateful widget merupakan widget yang dinamis. Tampilan dari stateful widget dapat berubah apabila diberikan perlakuan oleh pengguna. Contoh dari stateful widget adalah Checkbox, Radio, Slider, InkWell, Form, dan TextField.

## Seluruh Widget yang Saya Gunakan pada Tugas Ini
Sejauh ini, aplikasi Pokemon Bo menggunakan tiga widget, yaitu MyHomePage, PokemonItem, dan PokemonCard. Widget MyHomePage berfungsi sebagai halaman utama dari aplikasi. Widget PokemonItem berfungsi sebagai *class* yang mewakili *button*-*button* yang ada pada aplikasi Pokemon Bo yang memiliki atribut teks, ikon, dan warna. Widget PokemonCard berfungsi sebagai widget yang mengatur tampilan tombol dari masing-masing objek PokemonItem. Widget MyHomePage dan PokemonCard merupakan extended class dari StatelessWidget

## Langkah-langkah Pembuatan Aplikasi Flutter
Pertama, saya membuat proyek flutter dengan mengetik `flutter create pokemon_bo`. Selanjutnya, saya membuat berkas `menu.dart` dan memindahkan kelas MyHomePage ke berkas `menu.dart`. Setelah itu, saya membuat class tersebut meng-*extend* kelas StatelessWidget. Saya juga membuat kelas PokemonItem yang merepresentasikan masing-masing tombol yang ada. Saya menambahkan parameter `color` untuk kelas PokemonList agar tombol-tombol bisa mempunyai warna yang berbeda. Saya juga membuat tiga objek PokemonList yang masing-masingnya mewakili tombol `Lihat Item`, `Tambah Item`, dan `Logout`. Saya juga menambahkan respon munculnya snackbar bila salah satu dari ketiga tombol tersebut ditekan.
</details>

# Tugas 8
<details open>
<summary>Click here to see Tugas 8</summary>

## Daftar Isi Tugas 8
* [Perbedaan Antara Navigator.push() dan Navigator.pushReplacement()](#perbedaan-antara-navigatorpush-dan-navigatorpushreplacement)
* [*Layout Widget* pada Flutter](#layout-widget-pada-flutter)
* [Elemen Input pada Form Tugas 8](#layout-widget-pada-flutter)
* [Penerapan *Clean Architecture* pada Aplikasi Flutter](#penerapan-clean-architecture-pada-aplikasi-flutter)
* [Langkah-langkah Penerapan Checkpoint](#langkah-langkah-penerapan-checkpoint)


## Perbedaan Antara Navigator.push() dan Navigator.pushReplacement()
Pada dasarnya, Navigator.push() dan Navigator.pushReplacement() memiliki fungsi yang sama, yaitu menambahkan halaman baru ke dalam *stack of routes* yang diatur oleh Navigator. Pada Navigator.push(), program hanya menambahkan halaman baru ke dalam  *stack of routes*. Akan tetapi, Navigator.pushReplacement() akan men-*dispose* route dari halaman yang lama setelah menambahkan halaman baru. Singkatnya, Navigator.push() berfungsi untuk menambahkan halaman baru pada *stack of routes*, sedangkan Navigator.pushReplacement() berfungsi untuk menggantikan halaman lama dengan halaman baru pada *stack of routes*.<br>
Berikut adalah contoh penggunaan Navigator.push() dan Navigator.pushReplacement():
```
// Penggunaan Navigator.push()
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);

// Penggunaan Navigator.pushReplacement()
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);
```

## *Layout Widget* pada Flutter
*Layout Widget* pada Flutter terdiri dari dua jenis, yaitu *single-child layout widgets* dan *multi-child layout widgets*
### Single-child Layout Widgets
'Align'-> Mengatur posisi anak di dalam widget sesuai dengan parameter alignment.
'AspectRatio'-> Menetapkan rasio aspek (tinggi dan lebar) dari widget anak.
'Center'-> Menempatkan anak pada posisi tengah dari induk, baik secara vertikal dan horizontal.
'ConstrainedBox'-> Menetapkan batasan ukuran maksimum dan minimum pada widget anaknya. 
'Container'-> Menyediakan wadah untuk mengelola tata letak dan dekorasi widget anaknya, seperti panjang, lebar, *padding*.

### Multi-child Layout Widgets
'Flow'-> Mengatur widget anaknya dengan penempatan yang lebih dinamis
'Table'-> Menyusun widget anaknya dengan susunan seperti tabel.
'Wrap'-> Membungkus widget anaknya dalam *space* yang tersedia.
'ListView'-> Menyusun widget anaknya berurutan secara vertikal maupun horizontal.


## Elemen Input pada Form dan Alasan Penggunaannya
Elemen input yang digunakan pada form pada tugas ini adalah `TextFormField`. `TextFormField` digunakan untuk menerima nama produk, harga, dan deskripsi. Alasan dari penggunaan `TextFormField` adalah agar pengguna dapat memberikan masukan secara bebas, namun masukan tersebut bisa divalidasi dengan `validator`. Oleh karena itu, tipe data yang dimasukan dapat disesuaikan dengan keinginan pemrogram. Misalnya, integer untuk harga dan String untuk nama produk.
<br>

## Penerapan *Clean Architecture* pada Aplikasi Flutter
*Clean architecture* pada aplikasi Flutter terdiri menjadi tiga *layer*, yaitu:
1. Presentation Layer (UI) <br>
Layer ini berisi komponen UI, seperti widget dan screens. Layer ini bertugas untuk mengurus interaksi dengan pengguna, baik dalam menampilkan aplikasi, maupun menerima input dari pengguna.
2. Domain Layer (Bussiness Logic) <br>
Layer ini berisi tentang operasi-operasi yang dijalankan oleh aplikasi. Layer ini bertugas untuk mengurus tindakan-tindakan yang dapat dilakukan oleh aplikasi.
3. Data Layer <br>
Layer ini berisi seluruh data yang dimiliki oleh aplikasi. Layer ini bertugas untuk menyimpan dan menyediakan data apabila dibutuhkan oleh aplikasi.

## Langkah-langkah Penerapan Checkpoint
Pertama, saya menambahkan drawer menu pada aplikasi dengan membuat berkas `left_drawer.dart` yang berisi opsi halaman utama dan tambah item. Kemudian, saya menambahkan drawer yang telah dibuat pada setiap halaman yang ada pada aplikasi untuk memudahkan navigasi. Setelah itu, saya membuat berkas `shoplist_form.dart` pada folder `lib` untuk menerima masukan pada proses penambahan *item* oleh pengguna. Saya juga menambahkan ElevatedButton agar data yang telah dimasukkan dapat ditampilkan kepada pengguna. Setelah itu, `shoplist_form.dart` diintegrasikan dengan tombol `add item` agar form dapat terlihat jika tombol `add item` ditekam. Terakhir, saya melakukan *refactoring* pada berkas yang telah dibuat untuk menerapkan *clean architecture* pada aplikasi ini.

Sumber:
- https://api.flutter.dev/flutter/widgets/Navigator/pushReplacement.html
- https://docs.flutter.dev/cookbook/navigation/navigation-basics
- https://docs.flutter.dev/ui/widgets/layout
- https://medium.com/@samra.sajjad0001/flutter-clean-architecture-5de5e9b8d093#:~:text=Clean%20Architecture%20is%20a%20software%20design%20principle%20that%20promotes%20the,to%20any%20software%20development%20framework.

</details>