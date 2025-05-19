import 'package:basketball/cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }else if (team == 'MA'){
      teamAPoints -= buttonNumber ;
    }else if (team == 'MB'){
      teamBPoints -= buttonNumber ;
    }else if (team == 'RA'){
      teamAPoints = 0;
    }else if (team == 'RB'){
      teamBPoints = 0;
    }else{
      teamAPoints = 0;
      teamBPoints = 0;
    }
  }
}
