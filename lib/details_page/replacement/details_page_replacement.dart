// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class detailsPageReplacement extends StatefulWidget {
  detailsPageReplacement({Key? key, this.dropDownValue}) : super(key: key);
  String? dropDownValue = 'Miníma';
  @override
  State<detailsPageReplacement> createState() => _detailsPageReplacementState();
}

class _detailsPageReplacementState extends State<detailsPageReplacement> {
  TextEditingController inputController = TextEditingController();

  List<String> options = [
    'Miníma',
    'Baixa',
    'Moderada',
    'Severa',
    'Emergência',
  ];

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
                'Reposição Volêminca',
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
                  'INJÚRIA TECIDUAL',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 169, 167, 167),
                  ),
                ),
              ),
              SizedBox(width: 40),
              Text(
                'SÓDIO ATUAL',
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
                DropdownButton<String>(
                  value: widget.dropDownValue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  elevation: 0,
                  style: TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.blue,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      print(newValue);
                      widget.dropDownValue = newValue ?? options.last;
                    });
                  },
                  items: options.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
                SizedBox(width: 50),
                Expanded(
                  child: TextFormField(
                    controller: inputController,
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
                onPressed: null,
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
