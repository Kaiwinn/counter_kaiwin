import 'package:counter_kaiwin/counter/view/counter_view.dart';
import 'package:counter_kaiwin/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          // BlocProvider is where Bloc was created
          create: (_) => CounterCubit(),
          child: CounterView(),
        ));
  }
}
