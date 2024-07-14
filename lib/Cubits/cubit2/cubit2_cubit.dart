import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit2_state.dart';

class Cubit2Cubit extends Cubit<Cubit2State> {
  Cubit2Cubit() : super(Cubit2Initial());

  bool obscureText = true;

  void toggleVisibility() {
    obscureText = !obscureText;
    emit(Cubit2Initial());
  }
}
