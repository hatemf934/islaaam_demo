import 'package:flutter/material.dart';

class CardSuraItem extends StatelessWidget {
  const CardSuraItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: 360,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Color(0xffE2BE7F),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Al-Anbiya",
                    style: TextStyle(
                      color: Color(0xff202020),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'الانبياء',
                    style: TextStyle(
                      color: Color(0xff202020),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "112 Verses",
                    style: TextStyle(color: Color(0xff202020), fontSize: 18),
                  ),
                ],
              ),
            ),

            Image.asset("assets/image/img_most_recent.png"),
          ],
        ),
      ),
    );
  }
}
