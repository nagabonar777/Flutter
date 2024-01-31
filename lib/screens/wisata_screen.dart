import 'package:belajar_flutter/screens/detail_ws_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helpers.dart';

class ListWisataScreeen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [{
      "nama": "Orang Utan",
      "kota": "Sumatra",
      "image": "assets/img/Orang-Utan.webp",
      "desc": "Orang utan atau sering disebut juga mawas adalah hewan mamalia yang masuk kedalam jenis kera besar berlengan panjang dan berbulu kemerahan atau cokelat. Secara umum, mereka hidup di hutan tropis Indonesia dan Malaysia, khususnya di Pulau Kalimantan dan Sumatra dan merupakan hewan endemik."
  },
  {
      "nama": "Rusa Australia",
      "kota": "Australia",
      "image": "assets/img/rusaaus.jpg",
      "desc": "Beberapa ciri khas rusa adalah memiliki dua kuku besar dan dua kuku kecil di setiap kakinya serta rusa jantan memiliki tanduk jantan. Rusa adalah hewan asli semua benua, kecuali Australia dan Antartika"
  },
  {
      "nama": "Singa Kulit Belang",
      "kota": "Kalimantan Timur",
      "image": "assets/img/singa.jpg",
      "desc": "eperti yang kita ketahui bahwa singa adalah salah satu binatang yang tergolong buas dan juga berbahaya, dia yang masih anggota keluarga kucing besar yang dapat mengeluarkan “auman” ukurannya lebih besar dan juga paling kuat dari anggota kucing besar lainnya. Namun kesamaan terdapat pada pola  hidup yang sangat menyukai hidup secara berkelompok. Dalam satu kelompok terdiri dari seekor pepimpin atau raja dan iikuti oleh beberapa singa betina dan juga  anak-anak singa."
  },
  {
      "nama": "Panda Jepang",
      "kota": "Kebun Binatang Jepang",
      "image": "assets/img/panda.jpg",
      "desc": " Panda merupakan salah satu hewan ikonik dari China. Mamalia ini memiliki ciri khas berupa bulu berwarna hitam dan putih.Hewan yang berasal dari keluarga beruang ini merupakan herbivora atau pemakan tumbuhan. Panda secara spesifik mengonsumsi tumbuhan berupa bambu."
              "panda memiliki sistem pengunyahan yang berbeda dari herbivora lainnya. Panda juga memiliki struktur rahang dan gigi yang berbeda.Artikel ini telah tayang di Kompas.com dengan judul Panda, Hewan Herbivora dari China yang Bertaring Tajam"
              "Artikel ini telah tayang di Kompas.com dengan judul "
              "Panda, Hewan Herbivora dari China yang Bertaring Tajam"

  },
  {
     "nama": "Komodo NTT",
      "kota": "Nusa Tenggara Timur",
      "image": "assets/img/komodo.jpg",
      "desc": "Komodo adalah kadal terbesar di bumi. Ia hidup di semak belukar dan tanah di beberapa pulau di Indonesia. Komodo adalah kadal terberat di dunia, dengan berat seratus lima puluh pound atau lebih. Komodo terpenting yang pernah diukur panjangnya cukup sepuluh kaki (3 meter) dan beratnya 366 pon (166 kg), namun ukuran umum Komodo di alam liar adalah sekitar delapan kaki (2,5 meter) panjangnya dan dua ratus pon atau 91 kg. Komodo memiliki kulit bersisik abu-abu, moncong runcing, anggota badan yang kuat, dan ekor yang berotot. Mereka menggunakan indera penciuman yang tajam untuk menemukan sisa-sisa hewan yang membusuk dari jarak bermil-mil jauhnya. Mereka juga berburu kadal lain sebagai mamalia besar dan umumnya biadab. Gigi komodo hampir seluruhnya dilapisi oleh gusinya. Setelah makan, gusi berdarah, membuat biakan yang sempurna untuk mikroorganisme yang mematikan. Mikroorganisme yang menempel pada ludah komodo menyebabkan penyakit darah, atau septikemia, pada korbannya. Seekor naga bisa menggigit mangsanya, lalu mengikutinya sampai hewan itu terlalu lemah untuk bertahan. Spesies kadal ini rentan dengan melihat, kehilangan spesies mangsa, dan kehilangan sekitarnya.Artikel ini telah tayang di Kompas.com dengan judul "
  },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/background.jpg"),
              fit: BoxFit.cover),
          ),
          child: ListView.builder(
            itemCount: wisataData.length, 
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                  MaterialPageRoute(
                    builder: (context) => DetailWisataScreen(
                      nama: wisataData[index]["nama"],
                      kota: wisataData[index]["kota"],
                      image: wisataData[index]["image"],
                      desc: wisataData[index]["desc"],
                    ),
                   ),
                  );
                },
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    height: displayHeight(context) * 0.25,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("${wisataData[index]["image"]}"),
                      fit:BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10) * 0.25,
                      color: Color.fromARGB(255, 32, 32, 32)
                    ),
                    child: Text(
                      "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                      textAlign:  TextAlign.justify,
                      style:  TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ) ,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
