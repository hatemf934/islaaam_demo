import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/sebha/presentation/views/widgets/sepha_image_section.dart';
import 'package:islaaaam_app/features/sebha/presentation/views/widgets/sepha_title_section.dart';

class SephaView extends StatelessWidget {
  const SephaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SephaTitleSection(),
            SizedBox(height: 60),
            SephaImageSection(),
          ],
        ),
      ),
    );
  }
}
