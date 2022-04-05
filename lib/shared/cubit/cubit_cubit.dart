import 'package:bloc/bloc.dart';
import 'package:counter_with_bloc/counter/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:counter_with_bloc/counter/modules/done_tasks/done_tasks_screen.dart';
import 'package:counter_with_bloc/counter/modules/new_tasks/new_tasks_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'cubit_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());

  static AppCubit get (context)=> BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> Screens =
      [
        NewTasksScreen(),
        DoneTasksScreen(),
        ArchivedTasksScreen(),
      ];
  List<String> titles =
  [
    'New Tasks',
    'Done Tasks',
    'Arechived Tasks',
  ];
  void changeIndex(int index)
  {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }
}
