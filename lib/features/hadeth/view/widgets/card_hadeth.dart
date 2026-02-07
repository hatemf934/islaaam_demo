import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/hadeth/view/widgets/details_hadeth_card.dart';
import 'package:islaaaam_app/features/hadeth/view/widgets/images_hadeth_card.dart';
import 'package:islaaaam_app/core/widget/details_content.dart';

class CardHadeth extends StatelessWidget {
  const CardHadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsContent(
              suraDetails: "assets/files/Hadeeth/h1.txt",
              title: "الحد يث الأول",
              tilteAppBar: 'Hadith-1',
            ),
          ),
        );
      },
      child: Container(
        width: 350,
        height: 650,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffE2BE7F),
        ),
        child: Stack(children: [ImagesHadethCard(), DetailsHadethCard()]),
      ),
    );
  }
}
