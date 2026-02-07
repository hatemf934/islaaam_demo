part of 'sepha_cubit.dart';

@immutable
sealed class SephaState {}

final class SephaInitial extends SephaState {}

final class SephaOnTapSepha extends SephaState {
  final int numberOfSepha;

  SephaOnTapSepha({required this.numberOfSepha});
}
