import 'package:flutter/material.dart';

class IconButtonArrow extends StatelessWidget {
  const IconButtonArrow({super.key, this.onPressed, required this.iconData});
  final Function()? onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Color(0xff202020)),
      ),
      onPressed: onPressed,
      icon: Icon(iconData, color: Color(0xffE2BE7F)),
    );
  }
}
