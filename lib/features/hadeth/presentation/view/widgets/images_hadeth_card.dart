import 'package:flutter/material.dart';

class ImagesHadethCard extends StatelessWidget {
  const ImagesHadethCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset("assets/image/HadithCardBackGround.png"),
        Spacer(),
        Image.asset(
          "assets/image/Mosque-02 2.png",
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
      ],
    );
  }
}
