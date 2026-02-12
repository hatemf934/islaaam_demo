import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/time/data/model/time_model.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/body_of_card_pray_time.dart';

class CardOfPrayTime extends StatelessWidget {
  const CardOfPrayTime({
    super.key,
    required this.timingModel,
    required this.prayName,
  });
  final TimingModel timingModel;
  final String prayName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 110,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff202020), Color(0xffB19768)],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: BodyOfCardPrayTime(timingModel: timingModel, prayName: prayName),
    );
  }
}
