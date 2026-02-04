import 'package:flutter/material.dart';
import 'package:islaaaam_app/core/widget/details_content.dart';

class ListTileSuraItem extends StatelessWidget {
  const ListTileSuraItem({super.key, required this.numberOfSura});
  final int numberOfSura;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsContent(
              title: "الفاتحة",
              detailsPage:
                  "[1] بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ [2] الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ [3] الرَّحْمَنِ الرَّحِيمِ [4] مَالِكِ يَوْمِ الدِّينِ [5] إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ [6] اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ [7] صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين",
              tilteAppBar: 'Al-Fatiha',
            ),
          ),
        );
      },
      child: ListTile(
        leading: Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Image.asset("assets/image/img_sur_number_frame.png"),
            Text(
              numberOfSura.toString(),
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
        title: Text(
          "Al-Fatiha",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text("7 Verses", style: TextStyle(color: Colors.white)),
        trailing: Text(
          "الفاتحه",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
