import 'package:flutter/material.dart';

class ImageDetailsSuraOrhadeth extends StatelessWidget {
  const ImageDetailsSuraOrhadeth({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/image/img_left_corner.png"),
        Text(
          title,
          style: TextStyle(
            color: Color(0xffE2BE7F),
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Image.asset("assets/image/img_right_corner.png"),
      ],
    );
  }
}
