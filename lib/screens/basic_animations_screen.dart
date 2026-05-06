import 'package:flutter/material.dart';
import '../widgets/custom_spinner.dart';
import '../widgets/profile_card.dart';

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
                    Text("Hello Anuththara,", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                    Text("Welcome to Flutter Animation Sprint", style: TextStyle(fontSize: 16, color: Colors.blueGrey)),
                  ],
                ),
              ),
              const Center(child: ProfileCard()),
              const Spacer(),
              const Center(child: Text("Phase 1 & 2 Demo", style: TextStyle(color: Colors.grey))),
              const SizedBox(height: 20),

              const SizedBox(height: 40),
              const Center(child: CustomSpinner()),
            ],
          ),
        ),
      ),
    );
  }
}