// import 'package:bloc_app/cubit/counter_cubit.dart';
// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   // Creates a group of tests.
//   group(
//     'Counter Cubit',
//     () {
//       CounterCubit? counterCubit;

//       setUp(() {
//         counterCubit = CounterCubit();
//       });

//       tearDown(() {
//         counterCubit?.close();
//       });
// // Creates a new test case with the given description (converted to a string) and body.
//       test(
//         "test initial state for the counterCubit is CounterState(CounterState : 0 )",
//         () {
//           expect(counterCubit?.state, CounterState(counterValue: 0));
//         },
//       );

//       blocTest(
//         'the cubit should emit a CounterState(countervalue: 1 , wasIncremented = true ) when cubit incrementes',
//         build: () => counterCubit!,
//         act: (cubit) => cubit,
//         expect: [CounterState(counterValue: 1 , wasIncremented: true)],
//       );
//     },
//   );
// }
