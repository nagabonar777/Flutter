import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';


class ContainerWidget extends StatelessWidget {
  ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
     // color: Colors.blueGrey,
     gradient: LinearGradient(
      colors: [
        Colors.orangeAccent,
        Colors.greenAccent,
      ],),
      borderRadius: BorderRadius.circular(10), 
      border: Border.all(color: Colors.black, width: 3),
      ), 
     
    );
  }
}