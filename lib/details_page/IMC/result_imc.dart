// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultadoScreen extends StatefulWidget {
  final double peso;
  final double altura;
  final int sexo;

  const ResultadoScreen(this.peso, this.altura, this.sexo, {super.key});

  @override
  State<ResultadoScreen> createState() => _ResultadoScreenState();
}

class _ResultadoScreenState extends State<ResultadoScreen> {
  _calcularIMC() {
    double peso = widget.peso;
    double altura = widget.altura;
    double imc = peso / (altura * altura);

    return imc.toStringAsFixed(2);
  }

  _results() {
    double resultadoIMC = double.parse(_calcularIMC());
    if (resultadoIMC < 18.5) {
      return "IMC Abaixo do peso";
    }
    if (resultadoIMC < 24.9) {
      return "IMC Normal";
    }
    if (resultadoIMC < 29.9) {
      return "IMC Sobrepeso";
    }
    return "IMC Obesidade";
  }

  _calcularPI() {
    int sexo = widget.sexo;
    double altura = widget.altura;
    double? pesoIdeal;

    switch (sexo) {
      case 0:
        pesoIdeal = (altura * 100) - 100;
        break;
      case 1:
        pesoIdeal = (altura * 100) - 105;
        break;
    }
    return pesoIdeal.toString();
  }

  _calcularPIC() {
    int sexo = widget.sexo;
    double peso = widget.peso;
    double altura = widget.altura;

    double? pesoIdealCorrigido;

    switch (sexo) {
      case 0:
        pesoIdealCorrigido =
            ((altura * 100) - 100) + (0.4 * (peso - ((altura * 100) - 100)));
        break;
      case 1:
        pesoIdealCorrigido =
            ((altura * 100) - 105) + (0.4 * (peso - ((altura * 100) - 105)));
        break;
    }
    return pesoIdealCorrigido.toString();
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
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              title: Text(
                'IMC, Peso Ideal e Peso Ideal \nCorrigido',
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        _results(),
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(_calcularIMC(),
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
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Peso Ideal',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(_calcularPI(),
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
                        'Peso ideal corrigido',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(_calcularPIC(),
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
                onPressed: () {},
                label: Text(
                  'REINICIAR',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
