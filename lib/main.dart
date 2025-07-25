import 'package:flutter/material.dart';
import 'package:my_project/belajar_form/form_screen.dart';
import 'package:my_project/container/dua.dart';
import 'package:my_project/container/satu.dart';
import 'package:my_project/container/tiga.dart';
import 'package:my_project/list_view/contoh_dua.dart';
import 'package:my_project/list_view/contoh_empat.dart';
import 'package:my_project/list_view/contoh_satu_.dart';
import 'package:my_project/list_view/contoh_tiga.dart';
import 'package:my_project/list_view/latihan_tiga.dart';
import 'package:my_project/list_view/wisata_screen.dart';
import 'package:my_project/main_layout.dart';
import 'package:my_project/row_column/latihan_satu.dart';
import 'package:my_project/row_column/row_column.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BelajarForm (),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello Flutter',
          style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blue,
          )),
    );
  }
}
