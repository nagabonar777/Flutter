import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

void main() {
  runApp(MaterialApp(
    title: 'Named Routes',
    initialRoute: '/',
    routes: {
      'about': (context) => AboutScreen(),
    },
  ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halooooooooo"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child:  Text('Kembali Ke Halaman Home'),
            ),
          ],
        ),
      ),
    );
  }
}