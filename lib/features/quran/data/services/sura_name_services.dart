import 'package:flutter/services.dart';
import 'package:islaaaam_app/features/quran/data/model/model_sura.dart';
import 'package:islaaaam_app/features/quran/data/services/api_class.dart';

class SuraNameServices {
  Future<List<ModelSura>> getAllSuraData() async {
    List<dynamic> getSuraAr = await ApiClass().getSuraName(typeOfLang: 'ar');
    List<dynamic> getSuraEng = await ApiClass().getSuraName(typeOfLang: 'eng');

    List<ModelSura> suras = [];

    for (int i = 1; i < 114; i++) {
      String count = (await rootBundle.loadString(
        "assets/files/quran_surahs/$i.txt",
      )).trim();
      String content = await rootBundle.loadString("assets/files/Suras/$i.txt");

      suras.add(
        ModelSura(
          numberOfSura: i,
          countAyat: count,
          suraNameEng: getSuraEng[i - 1]["name"],
          suraNameAr: getSuraAr[i - 1]["name"],
          suraContent: content,
        ),
      );
    }
    return suras;
  }
}
