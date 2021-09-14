import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'event.dart';
part 'home_state.dart';


class homeBloc extends Bloc<HomeEvent,HomeState>{

  homeBloc(): super(HomeState());



  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {

    if(event is ChangeDateTime ){
      yield HomeState(dateTime:event.dateTime);
    }else if(event is IncrementDateTime){

      DateTime incrementDate = DateTime(
        state.dateTime.year,
        state.dateTime.month,
        state.dateTime.day + 1,
        state.dateTime.hour,
        state.dateTime.minute,
        state.dateTime.second
      );


      yield HomeState(dateTime: incrementDate );

    }else if(event is DecrementDateTime){

      DateTime decrementedDate = DateTime(
          state.dateTime.year,
          state.dateTime.month,
          state.dateTime.day - 1,
          state.dateTime.hour,
          state.dateTime.minute,
          state.dateTime.second
      );


      yield HomeState(dateTime: decrementedDate );

    }

  }








}

