import 'package:belajar_flutter/gridview/grid_basic.dart';
import 'package:flutter/material.dart';


class Gridbasic extends StatelessWidget {
  const Gridbasic({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      children: [
        Container(
            color: Colors.yellowAccent,
            child: Center(
              child: Text("1", style: TextStyle(fontSize: 24.0),),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text("2", style: TextStyle(fontSize: 24.0),),
            ),
          ),
          Container(
            color: Colors.brown,
            child: Center(
              child: Text("3", style: TextStyle(fontSize: 24.0),),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text("4", style: TextStyle(fontSize: 24.0),),
            ),
          ),
      ],
    );
  }
}
