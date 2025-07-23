import 'package:flutter/material.dart';
import 'package:my_project/container/satu.dart';
import 'package:my_project/main_layout.dart';


class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container 2',
      body: Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.grey, Colors.tealAccent],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        boxShadow: [BoxShadow(color:Colors.black,
        spreadRadius: 2 )],
      ),
      child: Center(
        child:ElevatedButton(
          child: Text('container 1'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> 
              ContainerSatu())
              );
          } 
        ),
      )
       
    ),
    );
  }
}
