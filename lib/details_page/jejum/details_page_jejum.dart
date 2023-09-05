// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/Componets/TextForms/labeled_textform.dart';
import 'package:axcalc/details_page/Componets/buttons/main_button.dart';
import 'package:axcalc/details_page/jejum/result_jejum.dart';
import 'package:flutter/material.dart';

class detailsPageJejum extends StatefulWidget {
  const detailsPageJejum({super.key});

  @override
  State<detailsPageJejum> createState() => _detailsPageJejumState();
}

class _detailsPageJejumState extends State<detailsPageJejum> {
  TextEditingController inputController1 = TextEditingController();
  TextEditingController inputController2 = TextEditingController();

  _calcularJejum() {
    double peso = double.parse(inputController1.text);
    double horas = double.parse(inputController2.text);
    double inputP = peso;
    double inputH = horas;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoJejum(peso, horas, inputP, inputH),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          AppBarCalcs(label: 'Reposição de Jejum'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledTextForm(
                label: 'PESO',
                controller: inputController1,
                suffix: 'kg',
              ),
              LabeledTextForm(
                label: 'TEMPO DE JEJUM',
                controller: inputController2,
                suffix: 'h',
              )
            ],
          ),
          MainButton(text: 'CALCULAR', onPressed: _calcularJejum),
        ],
      ),
    );
  }
}
