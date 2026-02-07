import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/quran/data/model/model_sura.dart';
import 'package:islaaaam_app/features/quran/data/services/sura_name_services.dart';

part 'get_sura_state.dart';

class GetSuraCubit extends Cubit<GetSuraState> {
  GetSuraCubit() : super(GetSuraInitial());
  void getAllSuras() async {
    emit(GetSuraLoading());
    try {
      List<ModelSura> suras = await SuraNameServices().getAllSuraData();
      emit(GetSuraSucsses(modelSura: suras));
    } catch (e) {
      emit(GetSuraFailure(error: "error"));
    }
  }
}
