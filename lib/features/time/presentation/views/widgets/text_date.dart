import 'package:flutter/material.dart';

class TextDate extends StatelessWidget {
  const TextDate({super.key, required this.textDate});
  final String textDate;
  @override
  Widget build(BuildContext context) {
    return Text(
      textDate,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
