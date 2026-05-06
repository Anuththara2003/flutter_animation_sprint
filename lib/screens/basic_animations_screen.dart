import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';

class BasicAnimationsScreen extends StatelessWidget {
  const BasicAnimationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Phase 1 & 2")),
      body: const Center(
        child: ProfileCard(),
      ),
    );
  }
}