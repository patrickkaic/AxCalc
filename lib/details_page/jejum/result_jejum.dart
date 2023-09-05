// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
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
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Container(
              height: 260,
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
                          'PRIMEIRA HORA',
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
                      child: Text(_calcularJejum(),
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'SEGUNDA HORA',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 169, 167, 167),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        _calcularJejum2(),
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'TERCERIRA HORA',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 169, 167, 167),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(_calcularJejum2(),
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 120,
            height: 100,
            child: FittedBox(
              child: FloatingActionButton.extended(
                backgroundColor: Color.fromARGB(80, 70, 142, 247),
                elevation: 0,
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                label: Text(
                  'REINICIAR',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'ENTRADAS',
                    style: TextStyle(
                        color: Color.fromARGB(255, 169, 167, 167),
                        fontSize: 15),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    _showValue(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    _showValue2(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
