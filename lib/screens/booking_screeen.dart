
import 'package:belajar_flutter/helpers/size_helpers.dart';
import 'package:belajar_flutter/screens/output_booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //mendeskripsikan variabel input
TextEditingController namaController = TextEditingController();
TextEditingController tiketController = TextEditingController();
TextEditingController qtyController = TextEditingController();
TextEditingController tglController = TextEditingController();
String _pilihWisata = " ";



final List<String> wisata = [
"Orang Utan - Sumatra",
"Rusa - Australia",
"Singa - Kaltim",
"Panda - Zoo Japan",
"Komodo - NTT", 
];

final Map<String, double> wisataPrices = {
    "Orang Utan - Sumatra": 10000000.0,
    "Rusa - Australia": 50000000.0,
    "Singa - Kaltim": 1000000.0,
    "Panda - Zoo Japan": 70000000.0,
    "Komodo - NTT": 3000000.0,
  };
 
 final Map<String, String> bebasImage = {
    "Orang Utan - Sumatra" : "assets/img/Orang-Utan.webp",
    "Rusa - Australia": "assets/img/rusaaus.jpg",
    "Singa - Kaltim": "assets/img/singa.jpg",
    "Panda - Zoo Japan":  "assets/img/panda.jpg",
    "Komodo - NTT": "assets/img/komodo.jpg",
 };


  double selectedwisataPrice = 10000.0; 

void initState() {
  tglController.text = '';
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
         decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/background.jpg"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(204, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Booking Tiket"
                          ),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                            hintText: "Nama lengkap",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.text_fields)
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'input nama';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: qtyController,
                          decoration: InputDecoration(
                            hintText: "Qty",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.numbers),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Qty ';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: tglController,
                          decoration: InputDecoration(
                            hintText: "Tanggal",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.calendar_today),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Tanggal ';
                            }
                            return null;
                          },
                          onTap: () async{
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              String tgl =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                              setState(() {
                                tglController.text = tgl;
                              });
                            } else {
                              print("Tanggal Tidak Dipilih");
                            }
                          },
                        ),
                        SizedBox(height: 18,),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                            hintText: "Wisata",
                            labelText: "Pilih Wisata",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.tour),
                          ),
                          items: wisata.map((String items) {
                            int index = 0;
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _pilihWisata = newValue!;
                               selectedwisataPrice = wisataPrices[_pilihWisata] ?? 10000.0;
                            });
                          },
                        ),
                        SizedBox(height: 18,),
                        SizedBox(
                          width: displayWidth(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.circular(10),
                                  side: BorderSide(color: Colors.white60),
                                ),
                              ),
                            ),
                            child: Text("Simpan"),
                            onPressed: () {
                              _submit();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _submit() {
 final isValid = _formKey.currentState!.validate();
 if (!isValid) {
  return;
 } else {
  _formKey.currentState!.save();
  String nama = namaController.text;
  String qty = qtyController.text;
  String wisata = _pilihWisata;
  String tgl = tglController.text;

    double totalHarga = double.parse(qty) * selectedwisataPrice;

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => OutputBookingScreen(
        nama: nama, qty: qty, tgl: tgl, wisata: _pilihWisata,
            selectedwisataPrice: selectedwisataPrice,
            totalHarga: totalHarga, bebasImage:bebasImage[_pilihWisata]??""),
    ),
  );
 }
  }
}