import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('ToDo list'),
          ),
          body: Container(
            padding: const EdgeInsets.all(32),
            child: ListView(
              children: [
                todo('Foo'),
                todo('Bar'),
              ],
            ),
          )),
    );
  }

  Container todo(String title) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Icon(Icons.delete),
        ],
      ),
    );
  }
}
