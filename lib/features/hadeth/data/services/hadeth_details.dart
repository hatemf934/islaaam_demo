import 'package:flutter/services.dart';
import 'package:islaaaam_app/features/hadeth/data/model/hadeth_model.dart';

class HadethDetails {
  Future<List<HadethModel>> getHadethDetails() async {
    List<HadethModel> suras = [];
    for (var i = 1; i <= 50; i++) {
      String contentHadeth = await rootBundle.loadString(
        "assets/files/Hadeeth/h$i.txt",
      );
      String titleHadeth = await rootBundle.loadString(
        "assets/files/h_files_ordered/h$i.txt",
      );
      suras.add(
        HadethModel(
          numberOfHadeth: i,
          contentHadeth: contentHadeth,
          titleHadeth: titleHadeth,
        ),
      );
    }
    return suras;
  }
}
