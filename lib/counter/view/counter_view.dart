import 'package:counter_kaiwin/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color.fromARGB(255, 209, 209, 209),
            child: BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Center(
                    child: Text(
                  "$state",
                  style: (Theme.of(context).textTheme.headline2),
                ));
              },
            )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              key: const Key('kai1'),
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 30,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              key: const Key('kai2'),
              child: Icon(Icons.remove),
            )
          ],
        ));
  }
}
