import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:Text('Lesson day 14',
            style: TextStyle(
              fontSize: 40,
              color: Color(0xFFFF09349)
            ),
          )
        ),
      ),
    );
  }
}