import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islaaaam_app/features/radio/data/model/reciters_model.dart';
import 'package:islaaaam_app/features/radio/data/services/get_reciters.dart';
import 'package:meta/meta.dart';

part 'reciters_state.dart';

class RecitersCubit extends Cubit<RecitersState> {
  RecitersCubit() : super(RecitersInitial());
  void getReciters() async {
    emit(RecitersLoading());
    List<RecitersModel> recitersList = await GetReciters().getReciters();
    emit(RecitersSucsses(recitersList: recitersList));
  }

  void reset() {
    emit(RecitersInitial());
  }
}
