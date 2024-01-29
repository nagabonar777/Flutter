import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
   final List<String> Gallery = [
    'assets/img/Upin.png', 
    'assets/img/Upin.png', 
    'assets/img/Upin.png', 
    'assets/img/Upin.png', 
    'assets/img/Upin.png', 
    'assets/img/Upin.png', 
    'assets/img/Upin.png', 
    'assets/img/Upin.png', 
    'assets/img/Upin.png', 
   
   ];

  @override

  var data= 1;
  var color= 0;
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity,
    color: Color.fromARGB(255, 85, 160, 245),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            color: Color.fromARGB(255, 247, 224, 89),
           
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget> [
                Text("Teman-Teman Upin & Ipin", 
      style: TextStyle(
        fontSize:24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
         ),
          textAlign: TextAlign.center,
         ),
                Container(
                  height: 200,
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Image.network("assets/img/upindanipin.jpg", fit: BoxFit.cover,),
                ),
                Text("Episode Baru", 
      style: TextStyle(
        fontSize:24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
         ),
          textAlign: TextAlign.center,
         ),
                Container(
                  height: 200,
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Image.network("assets/img/rumah bakar ui.jpg", fit: BoxFit.cover,),
                ),
                Text("Segera Hadir", 
      style: TextStyle(
        fontSize:24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
         ),
          textAlign: TextAlign.center,
         ),
                Container(
                  height: 200,
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Image.network("assets/img/UpinIpinthelone.jpg", fit: BoxFit.cover,),
                ),
              ],
            ),
          ),
          
          //HORIZONTAL
      
           Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(10),
            
            width: double.infinity,
            height: 200,
            color: Color.fromARGB(255, 255, 220, 23),
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              children: <Widget> [
      
                Container(
               height: 50,
                width: 200,
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(255, 241, 228, 77),
                child: Stack(
                fit: StackFit.expand,
                children: [
                Image.network("assets/img/Upin.png", fit: BoxFit.cover),
                Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
            "Upin",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
        ],
        ),
      ),
      
                 Container(
               height: 50,
                width: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Stack(
                fit: StackFit.expand,
                children: [
                Image.network("assets/img/Ipin.png", fit: BoxFit.cover),
                Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
            "Ipin",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
        ],
        ),
      ),
      
                 Container(
               height: 50,
                width: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Stack(
                fit: StackFit.expand,
                children: [
                Image.network("assets/img/Ehsan.jpg", fit: BoxFit.cover),
                Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
            "Ehsan",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
        ],
        ),
      ),
      
                 Container(
               height: 50,
                width: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Stack(
                fit: StackFit.expand,
                children: [
                Image.network("assets/img/Fizi.jpg", fit: BoxFit.cover),
                Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
            "Fizi",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        
      ),
        ],
        ),
      ),
            Container(
               height: 50,
                width: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Stack(
                fit: StackFit.expand,
                children: [
                Image.network("assets/img/Mail.jpg", fit: BoxFit.cover),
                Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
            "Mail",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        
      ),
        ],
        ),
      ),
          Container(
               height: 50,
                width: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Stack(
                fit: StackFit.expand,
                children: [
                Image.network("assets/img/Memei.png", fit: BoxFit.cover),
                Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
            "Mei Mei",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        
      ),
        ],
        ),
      ),
      
      Container(
               height: 50,
                width: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Stack(
                fit: StackFit.expand,
                children: [
                Image.network("assets/img/Susanti.png", fit: BoxFit.cover),
                Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
            "Susanti",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        
      ),
        ],
        ),
      ),
      
              ],
            ),
          ),
          //Grid View
         Container(
  margin: EdgeInsets.all(16),
  padding: EdgeInsets.all(10),
  width: double.infinity,
  color: Color.fromARGB(255, 231, 218, 72),
  child: SingleChildScrollView(
    child: GridView.builder(
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount:3,
      crossAxisSpacing:8,
       ),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 9,
      itemBuilder: (context, index) {
        return Container(
          height: 200,
          width: 200,
          color: Colors.blue[color += 100],
          child: Center(
            child: Image.network(
              '${Gallery[index]}', // Replace with the actual paths or URLs of your images
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    ),
  ),
),
      
        ],
      ),
    ),
      );
  }
}