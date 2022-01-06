import 'package:bloc_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'second_screen.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({
  //   // Key? key,
  //   required this.color,
  //   required this.title,
  // });
  // // : super(key: key);
  // final String? title;
  // final Color? color;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times !"),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state.wasIncremented == true) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("add Button pressed "),
                    backgroundColor: Colors.green,
                    duration: Duration(milliseconds: 300),
                  ));
                } else if (state.wasIncremented == false) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("add Button pressed "),
                    backgroundColor: Colors.red,
                    duration: Duration(milliseconds: 300),
                  ));
                }
              },
              builder: (context, state) {
                if (state.counterValue < 0) {
                  return Text(' Negative : ${state.counterValue}');
                } else if (state.counterValue % 2 == 0) {
                  return Text(' Even : ${state.counterValue}');
                } else if (state.counterValue % 2 == 1) {
                  return Text(' ODD : ${state.counterValue}');
                }
                return Text('${state.counterValue}');
              },
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  heroTag: 'h1',
                  tooltip: 'increment',
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 24,
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  heroTag: 'h2',
                  tooltip: 'decrement',
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            MaterialButton(
              color: Theme.of(context).backgroundColor,
              child: Text("Go to the Second screen "),
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
            ),
            MaterialButton(
              color: Colors.greenAccent,
              child: Text(
                'Go to Third Screen',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/third');
              },
            ),
          ],
        ),
      ),
    );
  }
}
