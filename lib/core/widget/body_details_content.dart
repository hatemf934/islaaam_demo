import 'package:flutter/material.dart';

class BodyDetailsContent extends StatelessWidget {
  const BodyDetailsContent({
    super.key,
    required this.title,
    required this.detailsPage,
  });
  final String title;
  final String detailsPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
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
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              textAlign: TextAlign.center,
              detailsPage,
              style: TextStyle(
                color: Color(0xffE2BE7F),
                fontSize: 20,
                height: 2.2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Image.asset("assets/image/img_bottom_decoration.png"),
        ],
      ),
    );
  }
}
