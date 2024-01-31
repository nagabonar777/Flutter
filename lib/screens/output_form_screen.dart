import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tgl, agama;
 OutputFormScreen(
  {Key? key,
  required this.nama,
  required this.jk,
  required this.tgl,
  required this.agama,})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 126, 124, 124),
        title: Text("Output Form"),      
      ),
      body: Container(
        child: Column( 
          children: [
            Text("Nama : $nama"),
            Text("Jenis Kelamin : $jk"),
            Text("Tanggal Lahir : $tgl"),
            Text("Agama : $agama"),
          ],
        ),
      ),
    );
  }
}