// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('AxCalc'),
        ),
        body: ListView(
          children: [
            Center(
              child: Text('Indice de massa corportal'),
            )
          ],
        ));
  }
}
