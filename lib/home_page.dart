// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, prefer_const_constructors_in_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  final items = [
    'Anticoagulantes e Anestesia no Neuroeixo',
    'Balanço Hídrico Simplificado',
    'Variação do Volume Sistólico',
    'Índice de Massa Corporal',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AxCalc'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            items[0],
          ),
          Text(
            items[1],
          ),
          Text(
            items[2],
          ),
          Text(
            items[3],
          ),
        ],
      ),
    );
  }
}
