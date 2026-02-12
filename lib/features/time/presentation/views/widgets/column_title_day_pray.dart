import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/time/data/model/time_model.dart';

class ColumnTitleDayPray extends StatelessWidget {
  const ColumnTitleDayPray({super.key, required this.timeModel});
  final TimeModel timeModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Pray Time",
          style: TextStyle(color: Color.fromARGB(103, 9, 9, 50), fontSize: 24),
        ),
        Text(
          timeModel.day,
          style: TextStyle(
            color: Color(0xff202020),
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
