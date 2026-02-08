import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'show_arrow_state.dart';

class ShowArrowCubit extends Cubit<ShowArrowState> {
  ShowArrowCubit() : super(ShowArrowInitial());
  final CarouselSliderController controller = CarouselSliderController();

  void updateIndex(int index, int totalLength) {
    if (index == 0) {
      emit(ShowArrowBackFirst());
    } else if (index == totalLength - 1) {
      emit(ShowArrowBackLast());
    } else {
      emit(ShowArrowBackBoth());
    }
  }

  void next() => controller.jumpToPage(50);
  void previous() => controller.jumpToPage(0);
}
