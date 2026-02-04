import 'package:flutter/material.dart';

class SephaImageSection extends StatelessWidget {
  const SephaImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Column(
          children: [
            Image.asset("assets/image/Group 37.png", scale: 4),
            Image.asset("assets/image/SebhaBody 1.png"),
          ],
        ),
        Column(
          children: [
            SizedBox(height: 80),
            Text(
              "سبحان الله",
              style: TextStyle(
                fontSize: 44,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "30",
              style: TextStyle(
                fontSize: 44,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
