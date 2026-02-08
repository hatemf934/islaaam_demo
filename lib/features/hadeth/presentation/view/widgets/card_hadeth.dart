import 'package:flutter/material.dart';
import 'package:islaaaam_app/features/hadeth/data/model/hadeth_model.dart';
import 'package:islaaaam_app/features/hadeth/presentation/view/widgets/details_hadeth_card.dart';
import 'package:islaaaam_app/features/hadeth/presentation/view/widgets/images_hadeth_card.dart';
import 'package:islaaaam_app/core/widget/details_content.dart';

class CardHadeth extends StatelessWidget {
  const CardHadeth({super.key, required this.hadethModel});
  final HadethModel hadethModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsContent(
              suraDetails: hadethModel.contentHadeth,
              title: hadethModel.titleHadeth,
              tilteAppBar: "hadeth-${hadethModel.numberOfHadeth}",
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
        child: Stack(
          children: [
            ImagesHadethCard(),
            DetailsHadethCard(hadethModel: hadethModel),
          ],
        ),
      ),
    );
  }
}
