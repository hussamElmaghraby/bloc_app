import 'package:bloc_app/cubit/counter_cubit.dart';
import 'package:bloc_app/presentation/screens/second_screen.dart';
import 'package:bloc_app/router/router_app.dart';
import 'package:bloc_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/screens/home_screen.dart';
import 'presentation/screens/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        onGenerateRoute: _router.onGenerateRoutes,
      ),
    );
  }

  // we almost done we need to dispose this object.

}
