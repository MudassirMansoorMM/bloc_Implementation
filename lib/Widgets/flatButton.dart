import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyFlatButton extends ElevatedButton {

  final String? buttonTitle;
  final Function? onPress;

  MyFlatButton(String s, Function() param1, {this.buttonTitle, this.onPress}) : super(
    
    onPressed:  ()=> onPress?.call(),

    child: Text(buttonTitle ?? ""),
  
  );

  
}

