import 'package:flutter/material.dart';

class RowNextPray extends StatelessWidget {
  const RowNextPray({super.key, required this.nextPray});
  final String nextPray;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Next Pray - ",
          style: TextStyle(color: Color.fromARGB(103, 9, 9, 50), fontSize: 18),
        ),
        Text(
          nextPray,
          style: TextStyle(color: Color(0xff202020), fontSize: 20),
        ),
      ],
    );
  }
}
