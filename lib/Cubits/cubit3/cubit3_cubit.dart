import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit3_state.dart';

class Cubit3Cubit extends Cubit<Cubit3State> {
  Cubit3Cubit() : super(Cubit3Initial());
  int selectedRadioIndex = 0;

  void handleRadioValueChange(int? value) {
    selectedRadioIndex = value!;
    emit(Cubit3Initial());
  }
}
