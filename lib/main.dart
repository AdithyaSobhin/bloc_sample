import 'package:bloc_sample/color_screen/bloc/color_bloc.dart';
import 'package:bloc_sample/color_screen/color_screen.dart';
import 'package:bloc_sample/counter_screen/bloc/counter_bloc.dart';
import 'package:bloc_sample/counter_screen/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MultiBlocListener(listeners: [
    BlocProvider(
      create: (context) => CounterBloc(),
    ),
    BlocProvider(
      create: (context) => ColorBloc(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorScreen(),
    );
  }
}
