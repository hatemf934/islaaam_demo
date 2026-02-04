import 'package:flutter/material.dart';

class SephaTitleSection extends StatelessWidget {
  const SephaTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/image/Group 31.png', height: 170)),
        Text(
          "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
          style: TextStyle(
            fontSize: 44,
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
