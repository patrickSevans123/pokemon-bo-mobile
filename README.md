# Pembahasan Tugas-tugas PBP
# Daftar Isi
* [Identitas](#identitas-penulis)
* [Tugas 7](#tugas-7)
* [Tugas 8](#tugas-8)
* [Tugas 9](#tugas-9)
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
<details close>
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

# Tugas 9
<details open>
<summary>Click here to see Tugas 9</summary>

## Daftar Isi Tugas 9
* [Pengambilan Data JSON Tanpa Membuat Model Terlebih Dahulu](#pengambilan-data-json-tanpa-membuat-model-terlebih-dahulu)
* [Fungsi Cookie Request dan Mengapa Instance CookieRequest Perlu untuk Dibagikan ke Semua Komponen di Aplikasi Flutter.](#fungsi-cookie-request-dan-mengapa-instance-cookierequest-perlu-untuk-dibagikan-ke-semua-komponen-di-aplikasi-flutter)
* [Mekanisme Pengambilan Data dari JSON Hingga Dapat Ditampilkan pada Flutter](#mekanisme-pengambilan-data-dari-json-hingga-dapat-ditampilkan-pada-flutter)
* [Mekanisme Autentikasi dari Input Data Akun pada Flutter ke Django Hingga Selesainya Proses Autentikasi oleh Django dan Tampilnya Menu pada Flutter](#mekanisme-autentikasi-dari-input-data-akun-pada-flutter-ke-django-hingga-selesainya-proses-autentikasi-oleh-django-dan-tampilnya-menu-pada-flutter)
* [Seluruh *Widget* yang Saya Pakai](#seluruh-widget-yang-saya-pakai)
* [Implementasi Seluruh Checkpoint](#seluruh-widget-yang-saya-pakai)

## Pengambilan Data JSON Tanpa Membuat Model Terlebih Dahulu
Kita tentunya bisa mengambil data JSON tampa membuat suatu model terlebih dahulu. Apabila kita ingin mengakses data pada JSON, tentunya hal tersebut dimungkinkan dengan menggunakan *parsing*. Akan tetapi, apabila kita ingin meningkatkan *code readability* dan mengimplementasikan struktur aplikasi yang lebih baik, kita dapat membuat model terlebih dahulu sebelum mengambil data JSON.

## Fungsi Cookie Request dan Mengapa Instance CookieRequest Perlu untuk Dibagikan ke Semua Komponen di Aplikasi Flutter.
Cookie Request merupakan suatu kelas di Flutter yang berfungsi untuk mengelola cookie. Secara menyeluruh, Cookie Request berfungsi untuk menyimpan dan mengelola Cookie. Salah satu penggunaannya adalah autentikasi saat pengguna login ke aplikasi. Instance Cookie Request perlu dibagikan ke semua komponen agar semua komponen mengakses pada cookie yang sama, sehingga apabila cookie berubah, maka semua komponen akan menerima perubahannya. Hal ini dapat meminimalisir *error* yang akan ditimbulkan apabila suatu komponen tidak dapat mengakses cookie yang dibutuhkan.

## Mekanisme Pengambilan Data dari JSON Hingga Dapat Ditampilkan pada Flutter
Pertama, kita melakukan import library yang dibutuhkan.
```
import 'package:http/http.dart' as http;
import 'dart:convert';
```
Kedua, kita akan mengambil file json, decode response menjadi bentuk json, dan melakukan konversi data json menjadi object pada aplikasi Flutter
```
class _ProductPageState extends State<ProductPage> {
Future<List<Item>> fetchProduct() async {
    var url = Uri.parse(
        'http://127.0.0.1:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Item
    List<Item> list_product = [];
    for (var d in data) {
        if (d != null ) {
            list_product.add(Item.fromJson(d));
        }
    }
    return list_product;
}
}
```
Terakhir, kita akan menampilkan object yang telah ada.
```
ListView.builder(
  itemCount: snapshot.data!.length,
  itemBuilder: (_, index) => InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              DetailPage(item: snapshot.data![index]),
        ),
      );
    },
  )
```
## Mekanisme Autentikasi dari Input Data Akun pada Flutter ke Django Hingga Selesainya Proses Autentikasi oleh Django dan Tampilnya Menu pada Flutter
Pertama, kita mengimport package yang diperlukan pada login.dart.
```
import 'package:pbp_django_auth/pbp_django_auth.dart';
```
Kedua, kita membuat sebuah CookieRequest baru.
```
final request = context.watch<CookieRequest>();
```
Terakhir, kita melakukan request login yang akan memanggil fungsi `login` pada `views.py`
```
final response = await request.login("http://127.0.0.1:8000/auth/login/", {
                                'username': username,
                                'password': password,
                                });
```
Berikut adalah isi dari `views.py`:
```
from django.shortcuts import render
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```

## Seluruh *Widget* yang Saya Pakai
- Inkwell : Membuat suatu item pada list bisa ditekan untuk melihat detail item.
- Listview.builder : Membuat list item yang ada dapat di-*scroll*.
- ElevatedButton: Menampilkan tombol yang memiliki efek mengambang jika ditekan seperti pada tombol submit login
- Appbar: Menampilkan suatu bar di bagian atas aplikasi untuk menampilkan nama aplikasi.
- TextField: Menerima input dari user seperti pada `shoplist_form.dart` saat menerima input nama item.
- SizedBox Widget: Membuat sebuah box memiliki tinggi tertentu.

## Implementasi Seluruh Checkpoint
Pertama, saya membuat app Django baru dengan nama `authentication`. Kemudian saya menginstall corsheaders pada Django. Setelah itu, saya membuat method `login` pada `views.py.
```
from django.shortcuts import render
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```
Lalu, saya juga menambahkan *routing* pada `urls.py`
```
from django.urls import path
from authentication.views import login

app_name = 'authentication'

urlpatterns = [
    path('login/', login, name='login'),
]
```
Saya pun menginstall *package* yang diperlukan untuk memulai proses integrasi sistem autentikasi.
```
flutter pub add provider
flutter pub add pbp_django_auth
```

Kemudian saya  mengubah kode menjadi seperti berikut:  
```
class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Flutter App',
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                    useMaterial3: true,
                ),
                home: MyHomePage()),
            ),
        );
    }
}
```
Setelah itu, saya membuat `login.dart` yang berfungsi untuk menghubungkan login pada Flutter dengan Django.
```
import 'package:shopping_list/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
    runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
const LoginApp({super.key});

@override
Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        theme: ThemeData(
            primarySwatch: Colors.blue,
    ),
    home: const LoginPage(),
    );
    }
}

class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

    @override
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
            appBar: AppBar(
                title: const Text('Login'),
            ),
            body: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextField(
                            controller: _usernameController,
                            decoration: const InputDecoration(
                                labelText: 'Username',
                            ),
                        ),
                        const SizedBox(height: 12.0),
                        TextField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                                labelText: 'Password',
                            ),
                            obscureText: true,
                        ),
                        const SizedBox(height: 24.0),
                        ElevatedButton(
                            onPressed: () async {
                                String username = _usernameController.text;
                                String password = _passwordController.text;

                                // Cek kredensial
                                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                // Untuk menyambungkan Android emulator dengan Django pada localhost,
                                // gunakan URL http://10.0.2.2/
                                final response = await request.login("http://<APP_URL_KAMU>/auth/login/", {
                                'username': username,
                                'password': password,
                                });
                    
                                if (request.loggedIn) {
                                    String message = response['message'];
                                    String uname = response['username'];
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                    ScaffoldMessenger.of(context)
                                        ..hideCurrentSnackBar()
                                        ..showSnackBar(
                                            SnackBar(content: Text("$message Selamat datang, $uname.")));
                                    } else {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                            title: const Text('Login Gagal'),
                                            content:
                                                Text(response['message']),
                                            actions: [
                                                TextButton(
                                                    child: const Text('OK'),
                                                    onPressed: () {
                                                        Navigator.pop(context);
                                                    },
                                                ),
                                            ],
                                        ),
                                    );
                                }
                            },
                            child: const Text('Login'),
                        ),
                    ],
                ),
            ),
        );
    }
}
```
Setelah itu, saya membuat `product.dart` yang berisi kode berikut:
```
// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

List<Item> itemFromJson(String str) => List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
    String model;
    int pk;
    Fields fields;

    Item({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    DateTime dateAdded;
    int price;
    int amount;
    String description;

    Fields({
        required this.user,
        required this.name,
        required this.dateAdded,
        required this.price,
        required this.amount,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        dateAdded: DateTime.parse(json["date_added"]),
        price: json["price"],
        amount: json["amount"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "date_added": "${dateAdded.year.toString().padLeft(4, '0')}-${dateAdded.month.toString().padLeft(2, '0')}-${dateAdded.day.toString().padLeft(2, '0')}",
        "price": price,
        "amount": amount,
        "description": description,
    };
}
```
Saya pun membuat `list_product.dart` yang menampilkan item dan apabila diklik akan memperlihatkan detail item dan memiliki tombol `back`.
```
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pokemon_bo/models/product.dart';
import 'package:pokemon_bo/widgets/left_drawer.dart';

class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Item>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse(
        'http://127.0.0.1:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Item> list_product = [];
    for (var d in data) {
        if (d != null ) {
            list_product.add(Item.fromJson(d));
        }
    }
    return list_product;
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    "Tidak ada data produk.",
                    style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(item: snapshot.data![index]),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${snapshot.data![index].fields.name}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].fields.price}"),
                        const SizedBox(height: 10),
                        Text(
                            "${snapshot.data![index].fields.description}")
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Item item;

  const DetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${item.fields.name}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Price:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("${item.fields.price}"),
            SizedBox(height: 10),
            Text(
              "Amount:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("${item.fields.amount}"),
            SizedBox(height: 10),
            Text(
              "Description:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("${item.fields.description}"),
            SizedBox(height: 10),
            Text(
              "Date Added:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("${item.fields.dateAdded}"),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the previous screen (ProductPage)
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Set button color to blue
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Set button shape to rectangle
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Adjust padding for a smaller button
                child: Text(
                  'Back',
                  style: TextStyle(fontSize: 14, color: Colors.white), // Set text color to white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```
Saya juga membuat fungsi *view* baru untuk menambahkan produk dan membuat routingnya.
```
@csrf_exempt
def create_product_flutter(request):
    if request.method == 'POST':
        
        data = json.loads(request.body)

        new_product = Product.objects.create(
            user = request.user,
            name = data["name"],
            price = int(data["price"]),
            description = data["description"]
        )

        new_product.save()

        return JsonResponse({"status": "success"}, status=200)
    else:
        return JsonResponse({"status": "error"}, status=401)
```
Saya juga membuat fungsi *logout* dan membuat routingnya.
```
from django.contrib.auth import logout as auth_logout
...
@csrf_exempt
def logout(request):
    username = request.user.username

    try:
        auth_logout(request)
        return JsonResponse({
            "username": username,
            "status": True,
            "message": "Logout berhasil!"
        }, status=200)
    except:
        return JsonResponse({
        "status": False,
        "message": "Logout gagal."
        }, status=401)
```
Aplikasi pun siap digunakan
</details>