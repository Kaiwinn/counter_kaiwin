import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  // don't rebuild widgets with unchange states values
  // => increase the smoothness of the application

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}
