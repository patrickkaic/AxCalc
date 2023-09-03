// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyAppCalcs extends StatelessWidget {
  const MyAppCalcs({required this.text, super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 52, 63, 92),
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
