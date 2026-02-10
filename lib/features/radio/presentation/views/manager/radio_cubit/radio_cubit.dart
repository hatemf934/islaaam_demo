import 'package:bloc/bloc.dart';
import 'package:islaaaam_app/features/radio/data/model/radio_model.dart';
import 'package:islaaaam_app/features/radio/data/services/get_radio.dart';
import 'package:meta/meta.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  RadioCubit() : super(RadioInitial());

  void getRadio() async {
    emit(RadioLoading());
    List<RadioModel> radioList = await GetRadio().getRadio();
    emit(RadioSucsses(radioList: radioList));
  }

  void reset() {
    emit(RadioInitial());
  }
}
