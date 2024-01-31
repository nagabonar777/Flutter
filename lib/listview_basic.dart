import 'package:flutter/material.dart';

class ListViewBasic extends StatelessWidget {
  const ListViewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Cupcake"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Donus"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Eclair"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Froyo"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Gingerbread"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Honeycomb"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Ice Cream Sandwich"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Jelly Bean"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Jelly Bean"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Kitkat"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Lollipop"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Marshmallow"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Nougat"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Oreo"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Android Pie"),
            ),
        ],
      ),
    );
  }
}