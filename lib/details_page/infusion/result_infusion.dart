// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/Componets/buttons/restart_button.dart';
import 'package:axcalc/details_page/Componets/value_screen/user_input.dart';
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
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Container(
              height: 123,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 235, 240),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Resultado',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        Text(
                          'TEMPO DE INFUSÃO',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 169, 167, 167),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(_calcularTaxa(),
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
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
