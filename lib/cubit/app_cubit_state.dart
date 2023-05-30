import 'package:equatable/equatable.dart';


abstract class CubitStates extends Equatable{}
// creating the states 

class InitialState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class WelcomeState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class LoadingState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class LoadedState extends CubitStates{
  final List<dynamic> places;

  LoadedState(this.places);
  @override
  // TODO: implement props
  List<Object?> get props => [places];

}
class DetailState extends CubitStates{
  final dynamic places;

  DetailState(this.places);
  @override
  // TODO: implement props
  List<Object?> get props => [places];

}



