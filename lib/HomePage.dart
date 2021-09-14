import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walturn/BLoc/home_bloc.dart';
import 'package:walturn/Widgets/flatButton.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: BlocBuilder<homeBloc,HomeState>(
        builder: (context, state ) =>

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


          Text(state.dateTime.toString()),
          MyFlatButton("Pick DateTime", ()=> showDate(context)),
          MyFlatButton("Increment Date", ()=>context.read<homeBloc>().add(IncrementDateTime())),
          MyFlatButton("Decrement Date", ()=>context.read<homeBloc>().add(DecrementDateTime())),



        ],),
      ),

    );


  }


  showDate(BuildContext context) async {

    DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2023)
    );

    if(dateTime != null){
      context.read<homeBloc>().add(ChangeDateTime(dateTime));
    }


  }






}
