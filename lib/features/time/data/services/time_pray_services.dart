import 'package:islaaaam_app/features/time/data/model/time_model.dart';
import 'package:islaaaam_app/features/time/data/services/api_pray.dart';

class TimePrayServices {
  Future<TimeModel> getPary() async {
    Map<String, dynamic> dataJson = await ApiPray().getPray();
    return TimeModel.fromjson(dataJson);
  }

  Future<List<TimingModel>> getTiming() async {
    Map<String, dynamic> dataJson = await ApiPray().getPray();
    List<TimingModel> timingModel = [];
    timingModel.add(TimingModel.fromjson(dataJson["timings"]));
    return timingModel;
  }
}
