// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/details_page/Componets/buttons/restart_button.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/user_input.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoTaxa extends StatefulWidget {
  final double volume;
  final double horas;
  final double inputVolume;
  final double inputHoras;
  const ResultadoTaxa(
      this.volume, this.horas, this.inputVolume, this.inputHoras,
      {super.key});
  @override
  State<ResultadoTaxa> createState() => _ResultadoTaxaState();
}

class _ResultadoTaxaState extends State<ResultadoTaxa> {
  _calcularTaxa() {
    double volume = widget.volume;
    double horas = widget.horas;
    double taxa = volume / horas;

    return '${taxa.toStringAsFixed(2)} ml/h';
  }

  _showValue() {
    double volume = widget.inputVolume;
    return 'Volume: ${volume}ml';
  }

  _showValue2() {
    double horas = widget.inputHoras;
    return 'Tempo Total de Infusão ${horas}h';
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
          AppBarCalcs(label: 'Taxa de Infusão em ml/h'),
          ResultContainer(
            text1: 'Tempo de Infusão',
            text2: _calcularTaxa(),
          ),
          RestartButton(
              text: 'REINICIAR', onPressed: () => GoRouter.of(context).pop()),
          InputUser(
            text1: _showValue(),
            text2: _showValue2(),
            text3: '',
          )
        ],
      ),
    );
  }
}
