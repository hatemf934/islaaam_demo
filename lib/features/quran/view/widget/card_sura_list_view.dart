import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/quran/view/widget/card_sura_item.dart';

class CardSuraListView extends StatelessWidget {
  const CardSuraListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CardSuraItem();
        },
      ),
    );
  }
}
