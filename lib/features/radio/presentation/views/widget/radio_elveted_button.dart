import 'package:flutter/material.dart';

class RadioElvetedButton extends StatelessWidget {
  const RadioElvetedButton({
    super.key,
    required this.textTitle,
    required this.onPressed,
    required this.isPressed,
  });
  final String textTitle;
  final Function() onPressed;
  final bool isPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 75),
        foregroundColor: isPressed ? Color(0xff202020) : Colors.white,
        backgroundColor: isPressed ? Color(0xffE2BE7F) : Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      ),
      onPressed: onPressed,
      child: Text(textTitle, style: TextStyle(fontSize: 16)),
    );
  }
}
