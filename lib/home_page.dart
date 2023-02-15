// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AxCalc'),
        centerTitle: true,
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
            title: Text('Indice de massa corporal'),
          ),
          ListTile(
            title: Text('ml para litros'),
          ),
        ],
      ),
    );
  }
}
