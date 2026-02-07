part of 'get_sura_cubit.dart';

@immutable
sealed class GetSuraState {}

final class GetSuraInitial extends GetSuraState {}

final class GetSuraSucsses extends GetSuraState {
  final List<ModelSura> modelSura;

  GetSuraSucsses({required this.modelSura});
}

final class GetSuraLoading extends GetSuraState {}

final class GetSuraFailure extends GetSuraState {
  final String error;

  GetSuraFailure({required this.error});
}
