import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/quran/view/widget/custom_text_feild.dart';
import 'package:islaaaam_app/features/quran/view/widget/most_recently_section.dart';
import 'package:islaaaam_app/features/quran/view/widget/sura_list_section.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/image/Group 31.png', height: 170),
              ),
              CustomTextFiled(),
              SizedBox(height: 15),
              MostRecentlySection(),
              SizedBox(height: 20),
              Expanded(child: SuraListSection()),
            ],
          ),
        ),
      ),
    );
  }
}
