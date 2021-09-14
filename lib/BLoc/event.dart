part of 'home_bloc.dart';


class HomeEvent extends Equatable{



  @override
  List<Object?> get props => [];



}

class ChangeDateTime extends HomeEvent{

  late DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];


  ChangeDateTime(DateTime dateTime){

    this.dateTime = dateTime;

  }



}

class IncrementDateTime extends HomeEvent{




}


class DecrementDateTime extends HomeEvent{




}