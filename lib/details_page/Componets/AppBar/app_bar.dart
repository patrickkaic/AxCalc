// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards({
    super.key,
    required this.text,
    this.fontSize,
    required this.onTap,
  });

  final String text;
  final double? fontSize;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(color: Colors.black),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      title: Text(
        'Cálculo',
        style: TextStyle(
          color: Color.fromARGB(255, 52, 63, 92),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
