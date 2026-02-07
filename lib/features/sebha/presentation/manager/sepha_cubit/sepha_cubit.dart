import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'sepha_state.dart';

class SephaCubit extends Cubit<SephaState> {
  SephaCubit() : super(SephaInitial());
  void numberOfSepha() {
    int number = 0;
    if (state is SephaOnTapSepha) {
      number = (state as SephaOnTapSepha).numberOfSepha;
    }
    emit(SephaOnTapSepha(numberOfSepha: number + 1));
  }

  void resetSepha() {
    emit(SephaOnTapSepha(numberOfSepha: 0));
    emit(SephaInitial());
  }
}
