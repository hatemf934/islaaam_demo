import 'package:flutter/material.dart';
import 'package:islaaaam_app/core/widget/content_of_sura_or_hadeth.dart';
import 'package:islaaaam_app/core/widget/image_details_sura_or_hadeth.dart';

class BodyDetailsContent extends StatelessWidget {
  const BodyDetailsContent({
    super.key,
    required this.title,
    required this.detailsPage,
  });
  final String title;
  final String detailsPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ImageDetailsSuraOrhadeth(title: title),
          Expanded(child: ContentOfSuraOrhadeth(detailsPage: detailsPage)),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
