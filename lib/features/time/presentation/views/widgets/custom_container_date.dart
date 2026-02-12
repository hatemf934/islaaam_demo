import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islaaaam_app/features/time/data/model/time_model.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/text_date.dart';

class CustomContainerDate extends StatelessWidget {
  const CustomContainerDate({super.key, required this.timeModel});
  final TimeModel timeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff856B3F),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextDate(
              textDate: DateFormat(
                "dd MMM '\n'yyyy",
              ).format(DateFormat("dd-MM-yyyy").parse(timeModel.dateGregorian)),
            ),
            Spacer(),
            TextDate(
              textDate: DateFormat(
                "dd MMM '\n'yyyy",
              ).format(DateFormat("dd-MM-yyyy").parse(timeModel.dateHijri)),
            ),
          ],
        ),
      ),
    );
  }
}
