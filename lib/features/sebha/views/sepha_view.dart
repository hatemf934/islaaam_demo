import 'package:flutter/material.dart';

class SephaView extends StatelessWidget {
  const SephaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/image/Group 31.png', height: 170),
            ),
            Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
              style: TextStyle(
                fontSize: 44,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 60),
            Stack(
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
            ),
          ],
        ),
      ),
    );
  }
}
