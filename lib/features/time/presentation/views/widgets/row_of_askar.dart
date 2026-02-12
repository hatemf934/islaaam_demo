import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/future_builder_nav.dart';

class RowOfAskar extends StatelessWidget {
  const RowOfAskar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FutureBuilderNav(
          azkarPath: "assets/files/Azkar/EveningAzkar.txt",
          imageAzkar: "assets/image/bell-icon 1.png",
          titleAzkarAr: "اذكار المساء",
          titleAzkarEn: "Evening Azkar",
        ),
        FutureBuilderNav(
          azkarPath: "assets/files/Azkar/MorningAzkar.txt",
          imageAzkar: "assets/image/comment-bubble-icon 1.png",
          titleAzkarAr: "اذكار الصباح",
          titleAzkarEn: "Morning Azkar",
        ),
      ],
    );
  }
}
