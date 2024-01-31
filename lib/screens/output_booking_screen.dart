import 'package:flutter/material.dart';

class OutputBookingScreen extends StatelessWidget {
  final String nama, qty, tgl, wisata ,bebasImage;
  final double selectedwisataPrice, totalHarga;

  OutputBookingScreen({
    Key? key,
    required this.bebasImage,
    required this.nama,
    required this.qty,
    required this.tgl,
    required this.wisata,
    required this.selectedwisataPrice,
    required this.totalHarga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
         backgroundColor: Color.fromARGB(255, 6, 207, 36),
        // You can customize the AppBar further as needed
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(bebasImage),
            Text("Nama: $nama"),
            Text("Jumlah: $qty"),
            Text("Tanggal Lahir: $tgl"),
            Text('Tempat Kunjungan: $wisata'),
            Text('Harga Per Tiket: $selectedwisataPrice'),
            Text('Total Harga: $totalHarga'),
          ],
        ),
      ),
    );
  }
}