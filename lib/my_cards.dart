import 'package:axcalc/details_page.dart';
import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards({
    super.key,
    required this.text,
    this.fontSize,
  });

  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => detailsPage(),
            ),
          );
        },
        title: Text(
          text,
          style: TextStyle(
            fontSize: fontSize ?? 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
