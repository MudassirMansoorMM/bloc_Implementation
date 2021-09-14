part of 'home_bloc.dart';

class HomeState extends Equatable{


  @override
  List<Object?> get props => [dateTime];


  late DateTime dateTime;


  HomeState({DateTime? dateTime}){

    this.dateTime = dateTime ?? DateTime.now();

  }



}