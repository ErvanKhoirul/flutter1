import 'package:flutter/material.dart';
import 'package:my_project/list_view/detail_character.dart';
import 'package:my_project/main_layout.dart';

class CharacterScreen extends StatelessWidget {
  CharacterScreen({super.key});

  // data
  final List<Map<String, dynamic>> characterData = [
    {
      "nama": "Vanzrorr",
      "gender": "Laki-laki",
      "image": "image/avatar1.jpeg",
      "point": 12000,
      "level": 70,
      "bio": "Seorang petualang dari negeri utara Punya syaa.",
      "zodiac": "Leo",
    },
    {
      "nama": "Kai",
      "gender": "Perempuan",
      "image": "image/avatar2.jpeg",
      "point": 13500,
      "level": 67,
      "bio": "Prajurit yang tangguh dan setia.",
      "zodiac": "Sagittarius",
    },
    {
      "nama": "Draa",
      "gender": "Laki-laki",
      "image": "image/avatar4.jpeg",
      "point": 1800,
      "level": 78,
      "bio": "Penyihir muda dengan kekuatan besar.",
      "zodiac": "Cancer",
    },
    {
      "nama": "Syaa",
      "gender": "Perempuan",
      "image": "image/avatar3.jpeg",
      "point": 15700,
      "level": 69,
      "bio": "Kekasihh Vanz.",
      "zodiac": "Virgo",
    },
    {
      "nama": "Sankk",
      "gender": "Laki-laki",
      "image": "image/avatar5.jpeg",
      "point": 20000,
      "level": 79,
      "bio": "Anomali Kehidupan.",
      "zodiac": "Pisces",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: characterData.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      characterData[index]['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    characterData[index]["nama"],
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailCharacterScreen(
                          nama: characterData[index]["nama"],
                          gender: characterData[index]["gender"],
                          image: characterData[index]["image"],
                          point: characterData[index]["point"],
                          level: characterData[index]["level"],
                          bio: characterData[index]["bio"],
                          zodiac: characterData[index]["zodiac"],
                        ),
                      ),
                    );
                  },
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                  child: Text(
                    'Detail',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
