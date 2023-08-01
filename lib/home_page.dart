// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/my_cards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Cálculos',
            style: TextStyle(
              color: Color.fromARGB(255, 52, 63, 92),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.star),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "",
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        children: [
          Container(
            constraints: BoxConstraints(maxHeight: 85),
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Buscar cálculo',
                filled: true,
                fillColor: Color.fromARGB(82, 181, 180, 180),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => _searchController.clear(),
                ),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
          MyCards(text: 'IMC, peso ideal e corrigido'),
          MyCards(text: 'Taxa de Infusão em ml/h'),
          MyCards(text: 'Conversor de taxas de infusão'),
          MyCards(text: 'Dose fracionada'),
          MyCards(text: 'Balanço hidrico simplificado')
        ],
      ),
    );
  }
}
