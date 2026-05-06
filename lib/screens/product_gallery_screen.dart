import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class ProductGalleryScreen extends StatelessWidget {
  const ProductGalleryScreen({super.key});

  // පින්තූර 6ක් සඳහා placeholder links
  final List<String> images = const [
    'https://picsum.photos/id/1/400/400',
    'https://picsum.photos/id/2/400/400',
    'https://picsum.photos/id/3/400/400',
    'https://picsum.photos/id/4/400/400',
    'https://picsum.photos/id/5/400/400',
    'https://picsum.photos/id/6/400/400',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Gallery")),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          String tag = 'product_$index';
          String url = images[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, anim, secondaryAnim) =>
                      ProductDetailScreen(imageTag: tag, imageUrl: url),
                  transitionsBuilder: (context, anim, secondaryAnim, child) {
                    return FadeTransition(opacity: anim, child: child);
                  }
              ));
            },
            child: Hero(
              tag: tag,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(url, fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}