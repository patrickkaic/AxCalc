// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultadoScreen extends StatelessWidget {
  final double resultado;

  ResultadoScreen(this.resultado);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
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
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.star_border_outlined,
                color: Color.fromARGB(255, 169, 167, 167),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info_outline_rounded,
                color: Color.fromARGB(255, 169, 167, 167),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Seu IMC é: ${resultado.toStringAsFixed(2)}'),
      ),
    );
  }
}
