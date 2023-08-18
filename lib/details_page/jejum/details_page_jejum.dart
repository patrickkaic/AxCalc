import 'package:flutter/material.dart';

class detailsPageJejum extends StatefulWidget {
  const detailsPageJejum({super.key});

  @override
  State<detailsPageJejum> createState() => _detailsPageJejumState();
}

class _detailsPageJejumState extends State<detailsPageJejum> {
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
