import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/custom_spinner.dart';
import 'onboarding_screen.dart';
import 'product_gallery_screen.dart';

class BasicAnimationsScreen extends StatelessWidget {
  const BasicAnimationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // මුළු screen එකම cover වීමට
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade100, Colors.white],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
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

                const SizedBox(height: 40),
                const Center(
                  child: Text(" Custom Loading Spinner",
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blueGrey)),
                ),
                const SizedBox(height: 20),
                const Center(child: CustomSpinner()),

                const SizedBox(height: 60),

                // Button Group
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      // First Button (Solid)
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (c) => const ProductGalleryScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          ),
                          icon: const Icon(Icons.grid_view),
                          label: const Text("Go to Product Gallery", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Second Button (Outlined style for distinction)
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: OutlinedButton.icon(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (c) => const OnboardingScreen()));
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.blue, width: 2),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            backgroundColor: Colors.white.withOpacity(0.5),
                          ),
                          // icon: const Icon(Icons.auto_awesome, color: Colors.blue),
                          label: const Text("Onboarding & Lottie", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}