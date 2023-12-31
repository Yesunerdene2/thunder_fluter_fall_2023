import 'package:flutter/material.dart';

void main() {
  print('Lesson Day - 11 lutter');
  final Point origin = Point(x: 0, y: 0, title: 'Test');
  final Text myName = Text('My name is khangaikhuu');
  final Center myCenteredName = Center(child: myName);
  final Scaffold scaffold = Scaffold(
    body: myCenteredName,
  );
  final MaterialApp materialApp = MaterialApp(
    title: 'Test',
    home: scaffold,
  );

  runApp(MaterialApp(
    title: 'Test',
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Center(
          child: Column(
        children: [
          Text('Hello ', style:TextStyle(
              color:Colors.blue,
              fontSize:30)
          ),
          Image.asset('assets/pic.jpeg'),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hello Hello');
        },
        child: Icon(Icons.add),
      ),
    ),
  ));
}

class Point {
  double x;
  double y;
  String title;
  Point({required this.x, required this.y, required this.title});
}
