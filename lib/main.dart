import 'package:bloc/bloc.dart';
import 'package:counter_with_bloc/counter/Counter.dart';
import 'package:counter_with_bloc/my%20project/cubit/api_data/posts_cubit.dart';
import 'package:counter_with_bloc/my%20project/current_reservation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show BuildContext, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'shared/bloc_observer.dart';


void main() {
  runApp(const MyApp());
  // BlocOverrides.runZoned(
  //       () {
  //     // Use cubits...
  //   },
  //   blocObserver: MyBlocObserver(),
  // );
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {

    return MaterialApp
      (
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          create: (context)=>PostsCubit()..posts,child: CurrentReservationScreen(),
      ),
      //Counter(),
    );
  }

}