import 'package:flutter/material.dart';

class RadioElvetedButton extends StatelessWidget {
  const RadioElvetedButton({super.key, required this.textTitle});
  final String textTitle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 75),
        foregroundColor: Color(0xff202020),
        backgroundColor: Color(0xffE2BE7F),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      ),
      onPressed: () {},
      child: Text(textTitle, style: TextStyle(fontSize: 16)),
    );
  }
}
