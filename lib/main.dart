import 'package:belajar_flutter/latihan_row.dart';
import 'package:belajar_flutter/tugas_row_column.dart';
import 'package:flutter/material.dart';
import 'container_widget.dart';
import 'latihan_widget.dart';
import 'latihan_row.dart';
import 'package:belajar_flutter/latihan_column.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"ChanzStore",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ChanZStore", style: TextStyle( 
            color: Colors.black87,
            fontStyle: FontStyle.italic,
            ),),
          backgroundColor: Color.fromARGB(255, 237, 231, 212),
          centerTitle: true,
        ),

        body:TugasRowColumn(),
      ),
     );
   }
}

class BelajarHelloWorld extends StatelessWidget {
  const BelajarHelloWorld({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("Hello Chandra Alviana Hamdani" ,
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold, 
    color: Colors.black
    ),
     );
  }
}       
