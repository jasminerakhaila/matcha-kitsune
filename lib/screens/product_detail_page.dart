import 'package:flutter/material.dart';
import 'package:matcha_kitsune/models/product_entry.dart';

class DetailProductEntry extends StatelessWidget {
  final ProductEntry product;

  const DetailProductEntry({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${product.fields.name}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text("Price: ${product.fields.price}"),
            const SizedBox(height: 10),
            Text("Description: ${product.fields.description}"),
            const SizedBox(height: 10),
            Text("Rating: ${product.fields.rating}"),
            const SizedBox(height: 10),
            Text("User ID: ${product.fields.user}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman daftar
              },
              child: const Text("Back to List"),
            ),
          ],
        ),
      ),
    );
  }
}