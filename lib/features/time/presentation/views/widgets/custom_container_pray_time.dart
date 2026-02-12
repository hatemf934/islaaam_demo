import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/time/data/model/time_model.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/column_title_day_pray.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/list_view_card_pray.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/row_next_pray.dart';

class CustomContanierPrayTime extends StatelessWidget {
  const CustomContanierPrayTime({
    super.key,
    required this.timeModel,
    required this.nextPray,
  });
  final TimeModel timeModel;
  final String nextPray;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        ColumnTitleDayPray(timeModel: timeModel),
        SizedBox(height: 30),
        ListViewCardPray(),
        SizedBox(height: 40),
        RowNextPray(nextPray: nextPray),
        SizedBox(height: 15),
      ],
    );
  }
}
