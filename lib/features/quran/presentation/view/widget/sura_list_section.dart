import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/quran/presentation/view/widget/list_view_sura.dart';

class SuraListSection extends StatelessWidget {
  const SuraListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Suras List",
          style: TextStyle(
            color: Color(0xffFEFFE8),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(child: ListViewSura()),
      ],
    );
  }
}
