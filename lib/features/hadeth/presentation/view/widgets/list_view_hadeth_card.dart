import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/hadeth/presentation/view/widgets/content_hadeth_section.dart';
import 'package:islaaaam_app/features/hadeth/presentation/view/widgets/show_arrow_section.dart';

class ListViewHadethCard extends StatelessWidget {
  const ListViewHadethCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [ContentHadethSection(), ShowArrowSection()]);
  }
}
