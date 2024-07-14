import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_6/Cubits/cubit4/cubit4_cubit.dart';
import 'package:task_6/task%204/Cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => Cubit4Cubit(),
        child: ScreenUsingCubit(),
      ),
      /*BlocProvider(
            create: (context) => Cubit3Cubit(),
            child: RadioListScreen(),
          ),*/
      /*BlocProvider(
            create: (context) => Cubit2Cubit(),
            child: PasswordFieldUsingCubit(),
          ),*/
      /*BlocProvider(
            create: (context) => FilterCubitCubit(),
            child: FastFilterBarUsingCubit(),
          ),*/
    );
  }
}
