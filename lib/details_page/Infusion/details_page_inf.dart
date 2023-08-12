import 'package:flutter/material.dart';

class detailsPageInf extends StatefulWidget {
  const detailsPageInf({super.key});

  @override
  State<detailsPageInf> createState() => _detailsPageInfState();
}

class _detailsPageInfState extends State<detailsPageInf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taxa de infusão em ml/h'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Tela de infusão'),
          ],
        ),
      ),
    );
  }
}
