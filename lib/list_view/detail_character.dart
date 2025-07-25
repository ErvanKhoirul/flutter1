import 'package:flutter/material.dart';
import 'package:my_project/main_layout.dart';

class DetailCharacterScreen extends StatelessWidget {
  final String nama;
  final String gender;
  final String image;
  final int point;
  final int level;
  final String bio;
  final String zodiac;

  const DetailCharacterScreen({
    super.key,
    required this.nama,
    required this.gender,
    required this.image,
    required this.point,
    required this.level,
    required this.bio,
    required this.zodiac,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: nama,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Center(
                child: Text(
                  "$nama ($gender)",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(image),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Text("Level: $level", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Text("Point: $point", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Text("Zodiac: $zodiac", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  "Bio:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  bio,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
