import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text("Home"),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Masuk Halamn About"),
            TextButton(
              child: Text("About"),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
             TextButton(
              child: Text("Grid"),
              onPressed: () {
                Navigator.pushNamed(context, '/latihan');
              },
            ),
             TextButton(
              child: Text("Container"),
              onPressed: () {
                Navigator.pushNamed(context, '/latihan2');
              },
            ),
             TextButton(
              child: Text("List View"),
              onPressed: () {
                Navigator.pushNamed(context, '/latihan3');
              },
            ),
             TextButton(
              child: Text("Fauna Screen"),
              onPressed: () {
                Navigator.pushNamed(context, '/latihan4');
              },
            ),
          ],
        ),
      ),
    );
  }
}