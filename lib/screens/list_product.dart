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
        'https://patrick-samuel-tugas.pbp.cs.ui.ac.id/json/');
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
