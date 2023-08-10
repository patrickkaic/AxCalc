// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          leading: BackButton(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'IMC, peso ideal e corrigido',
            style: TextStyle(
              color: Color.fromARGB(255, 52, 63, 92),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Sexo do paciente',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 169, 167, 167),
                ),
              ),
            ),
          ),
          ToggleSwitch(
            initialLabelIndex: null,
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
            doubleTapDisable: true,
            borderColor: [Color.fromARGB(255, 233, 230, 230)],
            borderWidth: 2.0,
            activeFgColor: Colors.black,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Color.fromARGB(255, 146, 144, 144),
            totalSwitches: 2,
            labels: ['Masculino', 'Feminino'],
            onToggle: (index) {
              print('Selected item Position: $index');
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 202, 200, 200)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Peso',
                      suffixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Text('kg',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 151, 149, 149))),
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 202, 200, 200),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Altura',
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
                            color: const Color.fromARGB(255, 202, 200, 200)),
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
                onPressed: () {},
                label: Text(
                  'Calcular',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
