import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/section_azkar.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/section_pray_time.dart';

class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/image/Group 31.png', height: 170),
            ),
            SectionPrayTime(),
            SectionAzkar(),
          ],
        ),
      ),
    );
  }
}
