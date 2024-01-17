import 'package:flutter/material.dart';
import 'container_widget.dart';
import 'latihan_widget.dart';



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
          title: const Text("Selamat Datang Anak Ganteng", style: TextStyle( 
            color: Colors.black87,
            fontStyle: FontStyle.italic,
            ),),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),

        body:Container(
          color: Colors.amber,
          child: Container2(),
        ),
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
