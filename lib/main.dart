import 'package:flutter/material.dart';
import 'package:travel/cubit/app_cubit.dart';
import 'package:travel/cubit/app_cubit_logics.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/services/data_service.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(create:(context)=>AppCubits(DataServices()),
      child: AppStateLogics(),
      )
      
    );
  }
}

