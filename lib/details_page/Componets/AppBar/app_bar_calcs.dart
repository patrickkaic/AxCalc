import 'package:flutter/material.dart';

class AppBarCalcs extends StatelessWidget {
  const AppBarCalcs({required this.label, super.key});

  final String label;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Text(
        label,
        style: const TextStyle(
          color: Color.fromARGB(255, 52, 63, 92),
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
