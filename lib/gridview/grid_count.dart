import 'package:belajar_flutter/gridview/grid_count.dart';
import 'package:flutter/material.dart';

class Gridcount extends StatelessWidget {
  @override
   var data = 1;
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(12,(index) => Container(
            child: Card(
              color: Colors.amber,
              child: Center(child: Text("${data++}")),
            )
         )
      ),

    );
  }
}