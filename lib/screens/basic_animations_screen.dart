import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/custom_spinner.dart';
import 'product_gallery_screen.dart';

class BasicAnimationsScreen extends StatelessWidget {
  const BasicAnimationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade100, Colors.white],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello Anuththara,",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                    Text("Welcome to Flutter Animation Sprint",
                        style: TextStyle(fontSize: 16, color: Colors.blueGrey)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Center(child: ProfileCard()),

              // Spacing before the spinner
              const SizedBox(height: 50),
              const Center(
                child: Text("Phase 2: Custom Loading Spinner",
                    style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blueGrey)),
              ),
              const SizedBox(height: 20),
              const Center(child: CustomSpinner()),

              // Spacing before the button
              const SizedBox(height: 50),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => const ProductGalleryScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  icon: const Icon(Icons.grid_view),
                  label: const Text("Go to Product Gallery"),
                ),
              ),
              const Spacer(), // To push everything up slightly for a balanced look
            ],
          ),
        ),
      ),
    );
  }
}