// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  final items = [
    'Anticoagulantes e Anestesia no Neuroeixo',
    'Balanço Hídrico Simplificado',
    'Variação do Volume Sistólico',
    'Índice de Massa Corporal',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AxCalc'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UserInputPage(title: items[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class UserInputPage extends StatefulWidget {
  final String title;

  UserInputPage({Key? key, required this.title}) : super(key: key);

  @override
  _UserInputPageState createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _textEditingController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Insira aqui sua entrada de usuário',
          ),
        ),
      ),
    );
  }
}
