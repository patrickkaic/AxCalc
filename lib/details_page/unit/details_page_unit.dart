// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/details_page/infusion/result_infusion.dart';

import 'package:flutter/material.dart';

class detailsPageUnit extends StatefulWidget {
  const detailsPageUnit({super.key});

  @override
  State<detailsPageUnit> createState() => _detailsPageUnitState();
}

class _detailsPageUnitState extends State<detailsPageUnit> {
  TextEditingController inputController1 = TextEditingController();
  TextEditingController inputController2 = TextEditingController();

  _calcularInfusion() {
    double volumes = double.parse(inputController1.text);
    double horas = double.parse(inputController2.text);
    double inputVolume = volumes;
    double inputHoras = horas;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ResultadoTaxa(volumes, horas, inputVolume, inputHoras),
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
                'Conversor de unidades',
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'VOLUME',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 169, 167, 167),
                  ),
                ),
              ),
              SizedBox(width: 115),
              Text(
                'TEMPO DE INFUSÃO',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 169, 167, 167),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 3),
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
                          'ml',
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
            ),
          ),
          SizedBox(
            width: 120,
            height: 100,
            child: FittedBox(
              child: FloatingActionButton.extended(
                elevation: 0,
                onPressed: _calcularInfusion,
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
