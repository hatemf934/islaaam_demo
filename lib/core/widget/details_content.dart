import 'package:flutter/material.dart';
import 'package:islaaaam_app/core/widget/app_bar_details_content.dart';
import 'package:islaaaam_app/core/widget/body_details_content.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({
    super.key,
    required this.title,
    required this.detailsPage,
    required this.tilteAppBar,
  });

  final String title;
  final String detailsPage;
  final String tilteAppBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBarDetailsContent(tilteAppBar: tilteAppBar),
      body: BodyDetailsContent(title: title, detailsPage: detailsPage),
    );
  }
}
