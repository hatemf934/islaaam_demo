part of 'reciters_cubit.dart';

@immutable
sealed class RecitersState {}

final class RecitersInitial extends RecitersState {}

final class RecitersLoading extends RecitersState {}

final class RecitersSucsses extends RecitersState {
  final List<RecitersModel> recitersList;

  RecitersSucsses({required this.recitersList});
}

final class RecitersFaliure extends RecitersState {
  final String error;

  RecitersFaliure({required this.error});
}
