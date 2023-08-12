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
//First AppBar
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

//Column with AppBar, Switch buttons and inputs
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
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'SEXO DO PACIENTE',
                style: TextStyle(
                  fontSize: 13,
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
          SizedBox(
            height: 10,
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
                          color: Color.fromARGB(255, 202, 200, 200),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'PESO',
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 202, 200, 200),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'ALTURA',
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
                onPressed: () {},
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
