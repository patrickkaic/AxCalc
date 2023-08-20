// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/details_page/IMC/result_imc.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  TextEditingController inputController1 = TextEditingController();
  TextEditingController inputController2 = TextEditingController();
  int sexo = 0;

  _calcularIMC() {
    double peso = double.parse(inputController1.text);
    double altura = double.parse(inputController2.text) / 100;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoScreen(peso, altura, sexo),
      ),
    );
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
            padding: const EdgeInsets.all(0.0),
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'SEXO DO PACIENTE',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 169, 167, 167),
                ),
              ),
            ),
          ),
          ToggleSwitch(
            initialLabelIndex: sexo,
            minWidth: 180,
            minHeight: 40,
            cornerRadius: 90,
            fontSize: 17,
            activeBorders: [
              Border.all(
                color: Color.fromARGB(255, 82, 139, 238),
                width: 2.0,
              ),
            ],
            activeBgColors: [
              [Color.fromARGB(255, 155, 201, 237)],
              [Color.fromARGB(255, 155, 201, 237)]
            ],
            borderColor: [Color.fromARGB(255, 233, 230, 230)],
            borderWidth: 2.0,
            activeFgColor: Colors.black,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Color.fromARGB(255, 146, 144, 144),
            totalSwitches: 2,
            labels: ['Masculino', 'Feminino'],
            onToggle: (index) {
              if (index == null) {
                return;
              }
              sexo = index;
            },
          ),
          SizedBox(height: 15),
          Row(
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
              SizedBox(width: 140),
              Text(
                'ALTURA',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 169, 167, 167),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
            child: Row(
              children: [
                Expanded(
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
                SizedBox(width: 20),
                Expanded(
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
                          'cm',
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
            ),
          ),
          SizedBox(
            width: 120,
            height: 100,
            child: FittedBox(
              child: FloatingActionButton.extended(
                elevation: 0,
                onPressed: _calcularIMC,
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
