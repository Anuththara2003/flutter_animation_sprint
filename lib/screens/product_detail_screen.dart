import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String imageTag;
  const ProductDetailScreen({super.key, required this.imageTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Detail")),
      body: Column(
        children: [
          // Hero widget is used to make the image transition smooth between screens
          Hero(
            tag: imageTag,
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.blue.shade100,
              child: const Icon(Icons.shopping_bag, size: 150, color: Colors.blue),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Premium Product Details",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "This screen was reached through a Hero Animation. Notice how the image transitions and expands from the previous screen seamlessly.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}