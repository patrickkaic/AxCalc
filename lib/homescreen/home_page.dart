// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/homescreen/my_cards.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        children: [
          Container(
            constraints: BoxConstraints(maxHeight: 63),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Buscar cálculo',
                filled: true,
                fillColor: Color.fromARGB(35, 88, 89, 92),
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
          MyCards(
            text: 'IMC, Peso Ideal e Corrigido',
            onTap: () {
              GoRouter.of(context).push('/detalhesimc');
            },
          ),
          MyCards(
            text: 'Reposição de Jejum',
            onTap: () {
              GoRouter.of(context).push('/detalhesjejum');
            },
          ),
          MyCards(
            text: 'Taxa de Infusão em ml/h',
            onTap: () {
              GoRouter.of(context).push('/detalhesinf');
            },
          ),
          MyCards(
            text: 'Conversor de Soluções',
            onTap: () {
              GoRouter.of(context).push('/detalhessol');
            },
          ),
          MyCards(
            text: 'Conversor de unidades',
            onTap: () {
              GoRouter.of(context).push('/detalhesunit');
            },
          ),
        ],
      ),
    );
  }
}
