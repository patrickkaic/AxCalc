import 'package:axcalc/homescreen/my_cards.dart';
import 'package:axcalc/homescreen/search_bar.dart';
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
    {'text': 'Variação de Volume Sistólico', 'url': '/detalhesvar'},
    {'text': 'Dose Fracionada', 'url': '/detalhesfracion'},
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
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SearchingBar(
              controller: _searchController,
              hintText: 'Buscar cálculo',
              onPressed: () => _searchController.clear(),
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
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
