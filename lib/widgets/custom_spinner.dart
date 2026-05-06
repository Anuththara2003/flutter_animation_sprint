import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomSpinner extends StatefulWidget {
  const CustomSpinner({super.key});

  @override
  State<CustomSpinner> createState() => _CustomSpinnerState();
}

class _CustomSpinnerState extends State<CustomSpinner> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); // එක දිගටම කැරකෙන්න
  }

  @override
  void dispose() {
    _controller.dispose(); // Controller එක අනිවාර්යයෙන් dispose කරන්න
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: CustomPaint(
            size: const Size(60, 60),
            painter: SpinnerPainter(),
          ),
        );
      },
    );
  }
}

class SpinnerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      0,
      math.pi * 1.5, // වටයෙන් 3/4ක් පමණක් අඳින්න
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}