import 'package:flutter/material.dart';

class InputUser extends StatelessWidget {
  const InputUser({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(),
          ),
          const Text(
            'ENTRADAS',
            style: TextStyle(
                color: Color.fromARGB(255, 169, 167, 167), fontSize: 15),
          ),
          Text(
            text1,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text3,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
