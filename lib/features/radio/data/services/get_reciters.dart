import 'package:dio/dio.dart';
import 'package:islaaaam_app/features/radio/data/model/reciters_model.dart';

class GetReciters {
  Dio dio = Dio();
  Future<List<RecitersModel>> getReciters() async {
    Response response = await dio.get(
      "https://www.mp3quran.net/api/v3/reciters?language=ar",
    );
    List<dynamic> dataRadio = response.data["reciters"];
    List<RecitersModel> reciterList = [];
    for (var reciter in dataRadio) {
      String serverUrl = reciter['moshaf'][0]['server'];
      String surahListStr = reciter['moshaf'][0]['surah_list'];
      List<String> surahNumbers = surahListStr.split(',');
      List<String> allSurahsUrls = [];
      for (var number in surahNumbers) {
        String formattedNumber = number.padLeft(3, '0');
        allSurahsUrls.add("$serverUrl$formattedNumber.mp3");
      }
      RecitersModel radioModel = RecitersModel(
        name: reciter["name"],
        url: serverUrl,
        allSurahsUrls: allSurahsUrls,
      );
      reciterList.add(radioModel);
    }
    return reciterList;
  }
}
