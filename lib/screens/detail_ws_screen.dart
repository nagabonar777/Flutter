import 'package:flutter/material.dart';

import '../helpers/size_helpers.dart';

class DetailWisataScreen extends StatelessWidget {
  final String nama;
  final String kota;
  final String image;
  final String desc;
  
  DetailWisataScreen(
    {required this.nama,required this.kota,required this.image,required this.desc,}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text("Fauna Detail"),
        backgroundColor: Color.fromARGB(255, 21, 44, 56),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/background.jpg"), // background
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
            ),
            Center(
              child: Text(
                "$nama - $kota",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: displayHeight(context)* 0.40,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(
            height: 16,
            ),
            Expanded(
              child:  ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: displayWidth(context) * 0.90,
                  height: 360,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 21, 30, 39),
                        Color.fromARGB(255, 46, 46, 25),
                        Color.fromARGB(255, 37, 20, 29)
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "$desc",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color:Colors.white,
                      fontFamily: 'DancingScript',
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
             ),
            ),
          ],
        ),
      ),
    );
  }
}

