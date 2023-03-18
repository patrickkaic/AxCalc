// ignore_for_file: prefer_const_constructors

import 'package:axcalc/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(AxCalc());

class AxCalc extends StatelessWidget {
  const AxCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AxCalc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}
