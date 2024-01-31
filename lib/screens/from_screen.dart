
import 'package:belajar_flutter/helpers/size_helpers.dart';
import 'package:belajar_flutter/screens/output_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BelajarForm extends StatefulWidget {
  const BelajarForm({super.key});

  @override
  State<BelajarForm> createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //mendeskripsikan variabel input
TextEditingController namaController = TextEditingController();
TextEditingController jkController = TextEditingController();
TextEditingController tglController = TextEditingController();
String _pilihAgama = '';


final List<String> agama = [
"Islam",
"Protestan",
"Budha",
"Katholik",
"Atheis", 
];

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
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
                        Text("Formulir Biodata"),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                            hintText: "Nama lengkap",
                            border: OutlineInputBorder()
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
                          controller: jkController,
                          decoration: InputDecoration(
                            hintText: "Jenis Kelamin",
                            border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Jenis Kelamin ';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: tglController,
                          decoration: InputDecoration(
                            hintText: "Tanggal Lahir",
                            border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input tanggal lahir ';
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
                              print("tanggal tidak dipilih");
                            }
                          },
                        ),
                        SizedBox(height: 18,),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                            hintText: "agama",
                            labelText: "pilih agama",
                            border: OutlineInputBorder()
                          ),
                          items: agama.map((String items) {
                            int index = 0;
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _pilihAgama = newValue!;
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
                            child: Text("simpan"),
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
  String jk = jkController.text;
  String agama = _pilihAgama;
  String tgl = tglController.text;
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => OutputFormScreen(
        nama: nama, jk: jk, tgl: tgl, agama: agama),
    ),
  );
 }
  }
}