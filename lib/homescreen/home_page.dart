// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/homescreen/my_cards.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  final myCards = [
    {'text': 'IMC, Peso Ideal e Corrigido', 'url': '/detalhesimc'},
    {'text': 'Reposição de Jejum', 'url': '/detalhesjejum'},
    {'text': 'Taxa de Infusão em ml/h', 'url': '/detalhesinf'},
    {'text': 'Conversor de Soluções', 'url': '/detalhessol'},
  ];

  late List<Map<String, dynamic>> myCardFilter = myCards;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      myCardFilter = myCards
          .where((element) => element['text']!
              .toUpperCase()
              .contains(_searchController.text.toUpperCase()))
          .toList();
      setState(() {});
    });
  }

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
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
                    onPressed: null,
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
            Expanded(
              child: ListView.builder(
                  itemCount: myCardFilter.length,
                  itemBuilder: (context, index) {
                    final card = myCardFilter[index];
                    return MyCards(
                      text: card['text']!,
                      onTap: () {
                        GoRouter.of(context).push(card['url']!);
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
