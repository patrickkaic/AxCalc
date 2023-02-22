// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = [
    'Anticoagulantes e Anestesia no Neuroeixo',
    'Balanço Hídrico Simplificado',
    'Variação do Volume Sistólico',
    'Índice de Massa Corporal',
  ];

  var select = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('AxCalc'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(13),
        itemBuilder: ((context, index) {
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            title: Text(
              items[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            selected: select.contains(items[index]),
            selectedTileColor: Colors.blue[50],
            onLongPress: (() {
              setState(
                () {
                  (select.contains(items[index]))
                      ? select.remove(items[index])
                      : select.add(items[index]);
                },
              );
            }),
          );
        }),
        separatorBuilder: ((context, index) => const Divider()),
        itemCount: items.length,
      ),
    );
  }
}
