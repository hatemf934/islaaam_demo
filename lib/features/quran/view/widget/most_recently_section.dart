import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/quran/view/widget/card_sura_list_view.dart';

class MostRecentlySection extends StatelessWidget {
  const MostRecentlySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}
