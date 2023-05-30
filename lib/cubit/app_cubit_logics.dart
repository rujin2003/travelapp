import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/cubit/app_cubit.dart';
import 'package:travel/cubit/app_cubit_state.dart';
import 'package:travel/pages/detail_page.dart';

import 'package:travel/pages/main_page.dart';
import 'package:travel/pages/welcomePage.dart';

class AppStateLogics extends StatefulWidget {
  const AppStateLogics({super.key});

  @override
  State<AppStateLogics> createState() => _AppStateLogicsState();
}

class _AppStateLogicsState extends State<AppStateLogics> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits,CubitStates>(builder: (context,state){
if(state is WelcomeState )
{return const WelcomePage();}
if (state is LoadingState) {
  return Container(child: const Center(child: CircularProgressIndicator( ),),);

}


if (state is LoadedState) {
  return  MainPage();
  
}
if (state is DetailState) {
  return DetailPage();

}
else {return Container();}
    });
  }
}