import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_app/business_logic/cubit/internet_cubit.dart';
// import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  final InternetCubit internetCubit;
  StreamSubscription? internetStreamConnectivity;
  CounterCubit({required this.internetCubit})
      : super(CounterState(counterValue: 0)) {
    monitorInternetCubit();
  }

  void increment() => emit(CounterState(
      counterValue: state.counterValue + 1,
      wasIncremented: state.wasIncremented = true));

  void decrement() => emit(CounterState(
      counterValue: state.counterValue - 1,
      wasIncremented: state.wasIncremented = true));

  void monitorInternetCubit() {
    internetStreamConnectivity = internetCubit.stream.listen((internetState) {
      if (internetState is InternetConnected &&
          internetState.connectionType == ConnectionType.Wifi) {
      } else if (internetState is InternetConnected &&
          internetState.connectionType == ConnectionType.Wifi) {}
    });
  }

  @override
  Future<void> close() {
    internetStreamConnectivity?.cancel();
    return super.close();
  }
}
