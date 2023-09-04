// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
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
          MyAppBarCalcs(text: 'Reposição de Jejum'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'PESO',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 169, 167, 167),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      controller: inputController1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 202, 200, 200),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Text(
                            'kg',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 151, 149, 149),
                            ),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 202, 200, 200)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'TEMPO DE JEJUM',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 169, 167, 167),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      controller: inputController2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 202, 200, 200),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Text(
                            'h',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 151, 149, 149),
                            ),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 202, 200, 200),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 120,
            height: 100,
            child: FittedBox(
              child: FloatingActionButton.extended(
                elevation: 0,
                onPressed: _calcularJejum,
                label: Text(
                  'CALCULAR',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
