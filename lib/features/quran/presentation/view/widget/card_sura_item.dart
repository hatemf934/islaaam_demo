import 'package:flutter/material.dart';
import 'package:islaaaam_app/core/widget/details_content.dart';
import 'package:islaaaam_app/features/quran/data/model/model_sura.dart';

class CardSuraItem extends StatelessWidget {
  const CardSuraItem({super.key, required this.modelSura});

  final ModelSura modelSura;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsContent(
              suraDetails: modelSura.suraContent,
              title: modelSura.suraNameAr,
              tilteAppBar: modelSura.suraNameEng,
            ),
          ),
        );
      },
      child: SizedBox(
        height: 170,
        width: 360,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Color(0xffE2BE7F),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      modelSura.suraNameEng,
                      style: TextStyle(
                        color: Color(0xff202020),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      modelSura.suraNameAr,
                      style: TextStyle(
                        color: Color(0xff202020),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${modelSura.countAyat} Verses",
                      style: TextStyle(color: Color(0xff202020), fontSize: 18),
                    ),
                  ],
                ),
              ),

              Image.asset("assets/image/img_most_recent.png"),
            ],
          ),
        ),
      ),
    );
  }
}
