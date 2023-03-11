// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_print
import 'package:axcalc/pages/page_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = [
    'Índice de Massa Corporal',
  ];

  var select = [];

  appBarDinamc() {
    if (select.isEmpty) {
      return AppBar(
        elevation: 0,
        title: Text('AxCalc'),
        centerTitle: true,
      );
    } else {
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              select = [];
            });
          },
        ),
        title: Text('${select.length} Selecionadas'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: TextTheme(
            headline6: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )).bodyText2,
        titleTextStyle: TextTheme(
            headline6: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )).headline6,
      );
    }
  }

  showDetails(items) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PageDetails(items: items),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDinamc(),
      body: ListView.separated(
        padding: EdgeInsets.all(13),
        itemBuilder: ((context, index) {
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            title: Text(
              items[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            selected: select.contains(items[index]),
            selectedTileColor: Colors.blue[50],
            onLongPress: (() {
              setState(() {
                (select.contains(items[index]))
                    ? select.remove(items[index])
                    : select.add(items[index]);
              });
            }),
            onTap: () => showDetails(items[index]),
          );
        }),
        separatorBuilder: ((context, index) => const Divider()),
        itemCount: items.length,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: select.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: (() {}),
              icon: Icon(Icons.star_border),
              label: Text(
                'Favoritar',
                style: TextStyle(
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }
}
