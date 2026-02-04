import 'package:flutter/material.dart';

class DetailsHadethCard extends StatelessWidget {
  const DetailsHadethCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/image/left_corner.png", scale: 1.2),
              Text(
                "الحديث الاول",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Image.asset("assets/image/right_corner.png", scale: 1.2),
            ],
          ),
          // SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            ''' عن أمـير المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه قال: سمعت رسول الله ﷺ يقول:
        
        "إنـمـا الأعـمـال بالنيات، وإنـمـا لكـل امـرئ ما نـوى. فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله، ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه".
        
        رواه إماما المحدثين: أبو عبد الله محمد بن إسماعيل البخاري [رقم: 1]، وأبو الحسين مسلم بن الحجاج القشيري النيسابوري [رقم: 1907]، رضي الله عنهما في "صحيحيهما" اللذين هما أصح الكتب المصنفة.''',

            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
