part of 'counter_cubit.dart';

@immutable

//Blueprint for all possible states.
class CounterState {
  int counterValue;
  bool? wasIncremented;
  CounterState({required this.counterValue, this.wasIncremented = false});

  @override
  List<Object?> get props => [this.counterValue, this.wasIncremented];
}
