import 'package:flutter/material.dart';

class ContentOfSuraOrhadeth extends StatelessWidget {
  const ContentOfSuraOrhadeth({super.key, required this.detailsPage});
  final String detailsPage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          textAlign: TextAlign.center,
          detailsPage,
          style: TextStyle(
            color: Color(0xffE2BE7F),
            fontSize: 20,
            height: 1.7,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
