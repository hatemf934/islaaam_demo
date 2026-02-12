import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islaaaam_app/features/time/data/model/time_model.dart';

class BodyOfCardPrayTime extends StatelessWidget {
  const BodyOfCardPrayTime({
    super.key,
    required this.timingModel,
    required this.prayName,
  });
  final TimingModel timingModel;
  final String prayName;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              prayName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              timingModel.timing[prayName],
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              DateFormat(
                "a",
              ).format(DateFormat("HH:mm").parse(timingModel.timing[prayName])),
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
