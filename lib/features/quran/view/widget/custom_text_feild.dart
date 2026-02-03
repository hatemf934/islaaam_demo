import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xffE2BE7F),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15),
        prefixIcon: Image.asset(
          scale: 1.5,
          "assets/icon_bottom/Vector.png",
          color: Color(0xffE2BE7F),
        ),
        hintText: "Sura Name",
        hintStyle: TextStyle(color: Color(0xffFEFFE8), fontSize: 18),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xffE2BE7F)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
