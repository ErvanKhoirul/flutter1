import 'package:flutter/material.dart';
import 'package:my_project/list_view/detail_wisata.dart';
import 'package:my_project/main_layout.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

//data
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Ubud",
      "kota": "Bali",
      "image": "image/ubud.jpeg",
      "desc": "Ubud Adalah Salah Satu Pantao di Bali...",
    },
    {
      "nama": "Pantai Kuta",
      "kota": "Bali",
      "image": "image/Kuta.jpeg",
      "desc": "Ubud Adalah Salah Satu Pantai di Bali...",
    },
    {
      "nama": "Gunung Rinjani",
      "kota": "Lombok",
      "image": "image/rinjani.jpeg",
      "desc": "Rinjani adalah salah satu gunung tertinggi di indonesia...",
    },
    {
      "nama": "Ranca Upas",
      "kota": "Bandung",
      "image": "image/rancaupas.jpeg",
      "desc": "Ranca Upas adalah salah satu destinasi alam di bandung...",
    },
    {
      "nama": "Tangkuban Perahu",
      "kota": "Bandung",
      "image": "image/tangkuban.jpeg",
      "desc": "Tangkuban Perahu adalah salah satu wisata alam di bandung...",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.purple, Colors.pink, Colors.orangeAccent],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
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
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${wisataData[index]['image']}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Text(
                    "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
