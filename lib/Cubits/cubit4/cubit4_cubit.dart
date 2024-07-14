import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit4_state.dart';

class Cubit4Cubit extends Cubit<Cubit4State> {
  Cubit4Cubit() : super(Cubit4Initial());
  String currentDisplay = '';

  void showText() {
    currentDisplay = 'Show text';
    emit(Cubit4Text());
  }

  void showCubitImage() {
    currentDisplay = 'Show cubit image';
    emit(Cubit4Image());
  }

  void showRedCircle() {
    currentDisplay = 'Show red circle';
    emit(Cubit4Circle());
  }

  void reset() {
    currentDisplay = '';
    emit(Cubit4Initial());
  }
}
