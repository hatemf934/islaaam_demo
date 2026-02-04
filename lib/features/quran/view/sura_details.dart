import 'package:flutter/material.dart';

class SuraDetails extends StatelessWidget {
  const SuraDetails({super.key});
  static String id = "sura_details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Color(0xffE2BE7F)),
        ),
        title: Text("Al-Fatiha", style: TextStyle(color: Color(0xffE2BE7F))),
        backgroundColor: Color(0xff202020),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/image/img_left_corner.png"),
                Text(
                  "الفاتحه",
                  style: TextStyle(
                    color: Color(0xffE2BE7F),
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset("assets/image/img_right_corner.png"),
              ],
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              "[1] بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ [2] الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ [3] الرَّحْمَنِ الرَّحِيمِ [4] مَالِكِ يَوْمِ الدِّينِ [5] إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ [6] اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ [7] صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين",
              style: TextStyle(color: Color(0xffE2BE7F), fontSize: 20),
            ),
            Spacer(),
            Image.asset("assets/image/img_bottom_decoration.png"),
          ],
        ),
      ),
    );
  }
}
