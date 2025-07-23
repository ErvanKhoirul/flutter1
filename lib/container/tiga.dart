import 'package:flutter/material.dart';
import 'package:my_project/container/dua.dart';
import 'package:my_project/main_layout.dart';

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container 3 - Stack Besar',
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 10, spreadRadius: 4),
                ],
              ),
            ),
    
            Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContainerDua()),
                    );
                  },
                  child: Text('Kembali ke Container 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
