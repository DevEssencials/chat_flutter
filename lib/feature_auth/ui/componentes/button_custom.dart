
import 'package:flutter/material.dart';

ButtonStyle buttonStyle(){
  return ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 139, 0, 0),),
    fixedSize: WidgetStatePropertyAll(Size(170, 35)),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),),
    textStyle: WidgetStatePropertyAll(TextStyle(color: Colors.white)),
    
  );
}

