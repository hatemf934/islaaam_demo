part of 'radio_cubit.dart';

@immutable
sealed class RadioState {}

final class RadioInitial extends RadioState {}

final class RadioLoading extends RadioState {}

final class RadioSucsses extends RadioState {
  final List<RadioModel> radioList;

  RadioSucsses({required this.radioList});
}

final class RadioFaliure extends RadioState {
  final String error;

  RadioFaliure({required this.error});
}
