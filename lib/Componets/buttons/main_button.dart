import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 100,
      child: FittedBox(
        child: FloatingActionButton.extended(
          backgroundColor: const Color.fromARGB(80, 70, 142, 247),
          elevation: 0,
          onPressed: onPressed,
          label: Text(
            text,
            style: const TextStyle(fontSize: 15, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
