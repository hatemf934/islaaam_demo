import 'package:bloc/bloc.dart';
import 'package:islaaaam_app/features/hadeth/data/model/hadeth_model.dart';
import 'package:islaaaam_app/features/hadeth/data/services/hadeth_details.dart';
import 'package:meta/meta.dart';

part 'get_hadeth_state.dart';

class GetHadethCubit extends Cubit<GetHadethState> {
  GetHadethCubit() : super(GetHadethInitial());
  void gethadeth() async {
    emit(GetHadethLoading());
    List<HadethModel> hadethModel = await HadethDetails().getHadethDetails();
    emit(GetHadethSucsses(hadethModel: hadethModel));
  }
}
