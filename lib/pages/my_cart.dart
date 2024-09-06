import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar produk
    final List<Map<String, dynamic>> products = [
      {'name': 'Orange', 'stock': '1000 ready stock', 'price': '\$15'},
      {'name': 'Apple', 'stock': '1000 ready stock', 'price': '\$20'},
      {'name': 'Banana', 'stock': '1000 ready stock', 'price': '\$5'},
      {'name': 'Mango', 'stock': '1000 ready stock', 'price': '\$15'},
      {'name': 'Orange', 'stock': '1000 ready stock', 'price': '\$10'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            elevation: 0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              title: Text(
                product['name'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product['stock']),
                  const SizedBox(height: 4),
                  Text(product['price']),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {
                  // Logika untuk menambahkan ke favorit
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
