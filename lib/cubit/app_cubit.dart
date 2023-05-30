//cubits 

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/cubit/app_cubit_state.dart';
import 'package:travel/services/data_service.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits (this.data): super(InitialState()){
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData()async{
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));

    } catch (e) {
      print(e.toString());
    }
  }
  void  detailPage(data){
    emit(DetailState(data));
  }
  void goHome(){
    emit(LoadedState(places));
  }
 
}