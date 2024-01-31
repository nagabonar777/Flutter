import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';


class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
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
        ),  child: Container (
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
       // color: Colors.blueGrey,
       gradient: LinearGradient(
        colors: [
          Colors.purpleAccent,
          Colors.yellowAccent,
        ],),
        borderRadius: BorderRadius.circular(10), 
        border: Border.all(color: Colors.black, width: 3),
        ),
          child: Container (
          height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
       // color: Colors.blueGrey,
       gradient: LinearGradient(
        colors: [
          Colors.lightBlue,
          Colors.orangeAccent,
        ],),
        borderRadius: BorderRadius.circular(10), 
        border: Border.all(color: Colors.black, width: 3),
          ),
      // child: BelajarHelloWorld(),
       ),
      ),
       
      ),
    );
  }
}