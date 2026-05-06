import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _expanded = !_expanded),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic,
        width: 350,
        height: _expanded ? 220 : 90,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: _expanded ? Colors.blue.shade50 : Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))],
        ),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, color: Colors.white, size: 30),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Flutter Developer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Mobile App Team", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            if (_expanded)
              Expanded(
                child: AnimatedOpacity(
                  opacity: _expanded ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "This card expands using AnimatedContainer and reveals details with AnimatedOpacity. It feels smooth and premium!",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}