import 'package:bloc_app/presentation/screens/home_screen.dart';
import 'package:bloc_app/presentation/screens/second_screen.dart';
import 'package:bloc_app/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case '/second':
        return MaterialPageRoute(builder: (_) => SecondScreen());
      case '/third':
        return MaterialPageRoute(builder: (_) => ThirdScreen());
      default:
        return null;
    }
  }
}
