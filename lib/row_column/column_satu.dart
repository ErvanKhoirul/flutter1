import 'package:flutter/material.dart';
import 'package:my_project/main_layout.dart';

 class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column  Satu',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Widget Text 1'),
          Text('Widget Text 2'),
          Text('Widget Text 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Row widget 1'),
               Text('Row widget 2'),
                Text('Row widget 3'),
            ],
          )
        ],
      ),
    );
  }
}