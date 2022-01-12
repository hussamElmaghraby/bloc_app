import 'package:bloc_app/business_logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Center(
        child: Container(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocConsumer<CounterCubit, CounterState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Text(state.counterValue.toString());
                  },
                ),
                MaterialButton(
                  color: Theme.of(context).backgroundColor,
                  child: Text("Go to the next page "),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/third');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
