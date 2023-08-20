// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      return "Abaixo do peso";
    }
    if (resultadoIMC < 24.9) {
      return "Normal";
    }
    if (resultadoIMC < 29.9) {
      return "Sobrepeso";
    }
    return "Obesidade";
  }

  _textColor() {
    final imc = double.parse(_calcularIMC());
    if (imc < 18.5) {
      return Colors.red; // Defina a cor desejada para cada resultado
    } else if (imc < 24.9) {
      return Colors.green;
    } else if (imc < 29.9) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
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
    return '${pesoIdeal.toString()} kg';
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
    return '${pesoIdealCorrigido.toString()} kg';
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
                          'IMC',
                          style: TextStyle(fontSize: 17),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              _results(),
                              style: TextStyle(
                                  fontSize: 17,
                                  color: _textColor(),
                                  fontWeight: FontWeight.bold),
                            ),
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
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
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
                      child: Text(
                        _calcularPI(),
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
        ],
      ),
    );
  }
}
