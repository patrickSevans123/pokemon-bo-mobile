# Pembahasan Tugas-tugas PBP
# Daftar Isi
* [Identitas](#identitas-penulis)
* [Tugas 7](#tugas-7)
# Identitas Penulis
Nama    : Patrick Samuel Evans Simanjuntak<br>
NPM     : 2206028251<br>
Kelas   : PBP C<br>

# Tugas 7
<details open>
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