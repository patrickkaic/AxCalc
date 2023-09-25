import 'package:flutter/material.dart';

class LabeledTextForm extends StatelessWidget {
  const LabeledTextForm(
      {super.key,
      this.titulo,
      required this.label,
      this.sizedBoxwidth,
      required this.controller,
      required this.suffix});

  final String? titulo;
  final String label;
  final double? sizedBoxwidth;
  final TextEditingController controller;
  final String suffix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titulo != null
            ? Text(
                titulo ?? 'Titulo 1',
                style: const TextStyle(
                  color: Color.fromARGB(255, 52, 63, 92),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              )
            : const SizedBox(),
        const SizedBox(
          height: 8,
        ),
        Text(label,
            style: const TextStyle(
                fontSize: 14, color: Color.fromARGB(255, 169, 167, 167))),
        SizedBox(
          width: sizedBoxwidth ?? 170,
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 202, 200, 200),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              suffixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Text(
                  suffix,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 151, 149, 149),
                  ),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 202, 200, 200)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
