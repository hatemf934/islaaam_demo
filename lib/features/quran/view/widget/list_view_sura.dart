import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/quran/view/widget/list_tile_sura_item.dart';

class ListViewSura extends StatelessWidget {
  const ListViewSura({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTileSuraItem(numberOfSura: index + 1);
      },
      separatorBuilder: (context, index) {
        return Divider(endIndent: 60, indent: 50);
      },
      itemCount: 20,
    );
  }
}
