import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String imageTag;
  final String imageUrl; // රූපයේ URL එක ලබා ගැනීමට

  const ProductDetailScreen({
    super.key,
    required this.imageTag,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Detail")),
      body: Column(
        children: [
          Hero(
            tag: imageTag,
            child: Image.network(
              imageUrl,
              height: 350,
              width: double.infinity,
              fit: BoxFit.cover, // පින්තූරය සම්පූර්ණයෙන් පෙනෙන්න
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Premium Product Experience",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Notice how this specific image expanded smoothly from the gallery. This is the power of Flutter Hero animations!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}