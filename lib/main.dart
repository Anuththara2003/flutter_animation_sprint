import 'package:flutter/material.dart';
import 'screens/basic_animations_screen.dart';

void main() {
  runApp(const AnimationSprintApp());
}

class AnimationSprintApp extends StatelessWidget {
  const AnimationSprintApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation Sprint',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const BasicAnimationsScreen(), // අපි හැදපු screen එක මෙතනට දුන්නා
    );
  }
}