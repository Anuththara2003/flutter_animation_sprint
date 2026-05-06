import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class ProductGalleryScreen extends StatelessWidget {
  const ProductGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Gallery")),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          String tag = 'product_$index';
          return GestureDetector(
            onTap: () {

              Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, anim, secondaryAnim) => ProductDetailScreen(imageTag: tag),
                  transitionsBuilder: (context, anim, secondaryAnim, child) {
                    return SlideTransition(
                      position: Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(anim),
                      child: FadeTransition(opacity: anim, child: child),
                    );
                  }
              ));
            },
            child: Hero(
              tag: tag,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(Icons.shopping_bag, size: 50, color: Colors.blue),
              ),
            ),
          );
        },
      ),
    );
  }
}