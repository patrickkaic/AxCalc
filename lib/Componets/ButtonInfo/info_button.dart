import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  final String text;
  final String text2;
  final String? text3;

  const InfoScreen({
    super.key,
    required this.text,
    required this.text2,
    this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 169, 167, 167),
          ),
        ),
        Text(
          text2,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        text3 != null
            ? Text(
                text3 ?? 'Text 3',
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            : const SizedBox(),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
