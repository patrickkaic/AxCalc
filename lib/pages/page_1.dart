// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageDetails extends StatefulWidget {
  final items;
  PageDetails({Key? key, required this.items}) : super(key: key);
  @override
  State<PageDetails> createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  final _form = GlobalKey<FormState>();
  final _value = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.items),
      ),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: _value,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  isDense: true,
                  border: OutlineInputBorder(),
                  labelText: 'Valor',
                  prefixIcon: Icon(Icons.science),
                ),
                key: _form,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe um valor para prosseguir';
                  }
                  return null;
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
