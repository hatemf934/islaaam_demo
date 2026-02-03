import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/quran/view/widget/card_sura_item.dart';
import 'package:islaaaam_app/features/quran/view/widget/card_sura_list_view.dart';
import 'package:islaaaam_app/features/quran/view/widget/custom_text_feild.dart';
import 'package:islaaaam_app/features/quran/view/widget/list_view_sura.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
  static String id = "Quran_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/image/Group 31.png', height: 200),
              ),
              CustomTextFiled(),
              SizedBox(height: 15),
              Text(
                "Most Recently",
                style: TextStyle(
                  color: Color(0xffFEFFE8),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),
              CardSuraListView(),
              SizedBox(height: 20),
              Expanded(child: ListViewSura()),
            ],
          ),
        ),
      ),
    );
  }
}
