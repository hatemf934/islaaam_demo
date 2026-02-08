part of 'show_arrow_cubit.dart';

@immutable
sealed class ShowArrowState {}

final class ShowArrowInitial extends ShowArrowState {}

final class ShowArrowBackFirst extends ShowArrowState {}

final class ShowArrowBackBoth extends ShowArrowState {}

final class ShowArrowBackLast extends ShowArrowState {}
