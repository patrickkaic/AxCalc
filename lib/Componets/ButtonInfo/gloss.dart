import 'package:flutter/material.dart';

class GlossScreen extends StatelessWidget {
  final String text2;
  final String? text3;
  final String? text4;
  final String? text5;
  final String? text6;

  const GlossScreen(
      {super.key,
      required this.text2,
      this.text3,
      this.text4,
      this.text5,
      this.text6});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Glossário:',
          style: TextStyle(
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
        text4 != null
            ? Text(
                text4 ?? 'Text 4',
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            : const SizedBox(),
        text5 != null
            ? Text(
                text5 ?? 'Text 5',
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            : const SizedBox(),
        text6 != null
            ? Text(
                text6 ?? 'Text 5',
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            : const SizedBox(),
      ],
    );
  }
}
