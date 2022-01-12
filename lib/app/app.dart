import 'package:bloc_app/business_logic/cubit/counter_cubit.dart';
import 'package:bloc_app/business_logic/cubit/internet_cubit.dart';
import 'package:bloc_app/router/router_app.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final Connectivity connectivity;

  MyApp({Key? key, required this.connectivity, required this.appRouter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(
            // read : get the state of internetCubit
            internetCubit: context.read<InternetCubit>(),
          ),
        ),
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(connectivity: connectivity),
        ),
      ],
      child: MaterialApp(
        onGenerateRoute: appRouter.onGenerateRoutes,
      ),
    );
  }

  // we almost done we need to dispose this object.

}
