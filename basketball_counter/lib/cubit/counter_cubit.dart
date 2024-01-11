import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(TeamAIncrementCount());

  int a = 0;
  int b = 0;

  void counterincrement({required String team, required int countnumber}) {
    if (team == 'A') {
      a += countnumber;
      emit(TeamAIncrementCount());
    } else {
      b += countnumber;
      emit(TeamBIncrementCount());
    }
  }

  void counterres() {
    a = 0;
    emit(TeamAIncrementCount());
    b = 0;
    emit(TeamBIncrementCount());
  }
}
