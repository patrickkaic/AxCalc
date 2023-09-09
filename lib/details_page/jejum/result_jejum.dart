// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/details_page/Componets/buttons/restart_button.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/user_input.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoJejum extends StatefulWidget {
  final double peso;
  final double horas;
  final double inputP;
  final double inputH;
  const ResultadoJejum(this.peso, this.horas, this.inputP, this.inputH,
      {super.key});
  @override
  State<ResultadoJejum> createState() => _ResultadoJejumState();
}

class _ResultadoJejumState extends State<ResultadoJejum> {
  _calcularJejum() {
    double peso = widget.peso;
    double horas = widget.horas;
    double jejum = horas * peso;

    return '${jejum.toStringAsFixed(2)} ml';
  }

  _calcularJejum2() {
    double peso = widget.peso;
    double horas = widget.horas;
    double jejum = (horas * peso) / 2;

    return '${jejum.toStringAsFixed(2)} ml';
  }

  _showValue() {
    double peso = widget.inputP;

    return 'Peso: ${peso.toString()} kg';
  }

  _showValue2() {
    double horas = widget.inputH;

    return 'Tempo: ${horas.toString()} h';
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
          ResultContainer(
            text1: 'PRIMEIRA HORA',
            text2: _calcularJejum(),
            text3: 'SEGUNDA HORA',
            text4: _calcularJejum2(),
            text5: 'TERCEIRA HORA',
            text6: _calcularJejum2(),
          ),
          RestartButton(
              text: 'REINICIAR', onPressed: () => GoRouter.of(context).pop()),
          InputUser(
            text1: _showValue(),
            text2: _showValue2(),
            text3: '',
          ),
        ],
      ),
    );
  }
}
