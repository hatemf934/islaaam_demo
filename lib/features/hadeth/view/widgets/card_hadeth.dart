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
              title: "الحد يث الأول",
              detailsPage:
                  ''' عن أمـير المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه قال: سمعت رسول الله ﷺ يقول:
        "إنـمـا الأعـمـال بالنيات، وإنـمـا لكـل امـرئ ما نـوى. فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله، ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه".
        رواه إماما المحدثين: أبو عبد الله محمد بن إسماعيل البخاري [رقم: 1]، وأبو الحسين مسلم بن الحجاج القشيري النيسابوري [رقم: 1907]، رضي الله عنهما في "صحيحيهما" اللذين هما أصح الكتب المصنفة.''',
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
