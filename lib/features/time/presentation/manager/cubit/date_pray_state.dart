part of 'date_pray_cubit.dart';

sealed class DatePrayState {
  const DatePrayState();
}

final class DatePrayInitial extends DatePrayState {}

final class DatePrayLoading extends DatePrayState {}

final class DatePraySucsses extends DatePrayState {
  final TimeModel timeModel;
  final List<TimingModel> timingModel;

  DatePraySucsses({required this.timeModel, required this.timingModel});
}

// final class DatePraySucssesTime extends DatePrayState {
//   final List<TimingModel> timingModel;

//   DatePraySucssesTime({required this.timingModel});
// }
