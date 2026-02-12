import 'package:bloc/bloc.dart';
import 'package:islaaaam_app/features/time/data/model/time_model.dart';
import 'package:islaaaam_app/features/time/data/services/time_pray_services.dart';

part 'date_pray_state.dart';

class DatePrayCubit extends Cubit<DatePrayState> {
  DatePrayCubit() : super(DatePrayInitial());
  void getTimePray() async {
    emit(DatePrayLoading());
    TimeModel timeModel = await TimePrayServices().getPary();
    List<TimingModel> timingModel = await TimePrayServices().getTiming();
    emit(DatePraySucsses(timeModel: timeModel, timingModel: timingModel));
  }
}
