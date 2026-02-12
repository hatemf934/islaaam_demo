import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/time/presentation/views/widgets/body_of_card_askar.dart';

class CardAskar extends StatelessWidget {
  const CardAskar({
    super.key,
    required this.nameAskar,
    required this.imageAskar,
    required this.onTap,
  });
  final String nameAskar;
  final String imageAskar;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 185,
        height: 260,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xffE2BE7F), width: 2),
        ),

        child: Body0fCardAskar(imageAskar: imageAskar, nameAskar: nameAskar),
      ),
    );
  }
}
