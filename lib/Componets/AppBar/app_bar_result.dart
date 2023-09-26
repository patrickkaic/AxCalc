import 'package:flutter/material.dart';

class AppBarResults extends StatelessWidget {
  final VoidCallback? onPressed;
  const AppBarResults({super.key, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.info_outline,
                color: Colors.grey,
              ))
        ],
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Cálculo',
          style: TextStyle(
            color: Color.fromARGB(255, 52, 63, 92),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
