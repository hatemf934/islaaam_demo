import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islaaaam_app/core/widget/app_bar_details_content.dart';
import 'package:islaaaam_app/core/widget/body_details_content.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({
    super.key,
    required this.title,
    required this.tilteAppBar,
    required this.suraDetails,
  });

  final String title;
  final String tilteAppBar;
  final String suraDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      appBar: AppBarDetailsContent(tilteAppBar: tilteAppBar),
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              Image.asset(
                "assets/image/img_bottom_decoration.png",
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
            ],
          ),
          BodyDetailsContent(title: title, detailsPage: suraDetails),
        ],
      ),
    );
  }
}
