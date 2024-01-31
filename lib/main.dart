import 'package:belajar_flutter/gridview/grid_basic.dart';
import 'package:belajar_flutter/gridview/grid_builder.dart';
import 'package:belajar_flutter/gridview/grid_count.dart';
import 'package:belajar_flutter/latihan_fullwidget.dart';
import 'package:belajar_flutter/latihan_listview.dart';
import 'package:belajar_flutter/latihan_row.dart';
import 'package:belajar_flutter/listview_basic.dart';
import 'package:belajar_flutter/screens/about_screen.dart';
import 'package:belajar_flutter/screens/booking_screeen.dart';
import 'package:belajar_flutter/screens/from_screen.dart';
import 'package:belajar_flutter/screens/home_screen.dart';
import 'package:belajar_flutter/screens/wisata_screen.dart';
import 'package:belajar_flutter/tugas_row_column.dart';
import 'package:flutter/material.dart';
import 'container_widget.dart';
import 'latihan_widget.dart';
import 'latihan_row.dart';
import 'package:belajar_flutter/latihan_column.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNavigationMenu(),
        '/about': (context) => AboutScreen(),
        '/latihan': (context) => LatihanGrid(),
        '/latihan2': (context) => Container2(),
        '/latihan3':(context) => ListViewBasic(),
        '/latihan4': (context) => ListWisataScreeen(),
      },
    );
  }
}
//  class SideBar extends StatelessWidget {
//    const SideBar ({super.key});
 
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//       appBar: AppBar(
//         title: const Text("About"),
//         backgroundColor: Colors.blue,
//       ),
//      );
//    }
//  }

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Text(
        "Hello Dunia...\nHallo Chanddra.. ",
        style: TextStyle(
            color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key});

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  @override
  int _selectedTab = 0;

  List _pages = [
    HomeScreen(),
   LatihanGrid(),
    TugasRowColumn(),
    Container2(),
    ListWisataScreeen(),
    BelajarForm(),
    BookingScreen(),
    

  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Grid"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_3x3_outlined), label: "Container"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Row & Coloum"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Wisata"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "From"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Booking"),
        ],
      ),
    );
  }
}