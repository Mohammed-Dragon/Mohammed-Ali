import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'filter_cubit_state.dart';

class FilterCubitCubit extends Cubit<FilterCubitState> {
  FilterCubitCubit() : super(FilterCubitInitial());

  int selectedIndex = 0;
  void FilterChange(index) {
    selectedIndex = index;
    emit(FilterCubitInitial());
  }
}
