import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards({
    super.key,
    required this.text,
    this.fontSize,
    required this.onTap,
  });

  final String text;
  final double? fontSize;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        onTap: onTap,
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
