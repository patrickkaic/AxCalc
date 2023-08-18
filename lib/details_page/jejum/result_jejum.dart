// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoJejum extends StatefulWidget {
  final double peso;
  final double horas;
  const ResultadoJejum(this.peso, this.horas, {super.key});
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              title: Text(
                'Reposição de Jejum',
                style: TextStyle(
                  color: Color.fromARGB(255, 52, 63, 92),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Container(
              height: 265,
              width: 300,
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
                          style: TextStyle(fontSize: 17),
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
                        style: TextStyle(fontSize: 17),
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
                        style: TextStyle(fontSize: 17),
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
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
