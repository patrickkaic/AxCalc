import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String? textSide;
  final Color? cores;
  final String? text3;
  final String? text4;
  final String? text5;
  final String? text6;

  const ResultContainer({
    super.key,
    required this.text1,
    required this.text2,
    this.textSide,
    this.cores,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 350,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 233, 235, 240),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Resultado',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 169, 167, 167),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  textSide != null
                      ? Text(
                          textSide ?? '',
                          style: TextStyle(
                              fontSize: 17,
                              color: cores,
                              fontWeight: FontWeight.bold),
                        )
                      : const SizedBox(),
                ],
              ),
              Text(
                text2,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              text3 != null
                  ? Text(
                      text3 ?? 'TEXT 3',
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 169, 167, 167),
                      ),
                    )
                  : const SizedBox(),
              text4 != null
                  ? Text(
                      text4 ?? 'TEXT 4',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 10,
              ),
              text5 != null
                  ? Text(
                      text5 ?? 'TEXT 5',
                      style: const TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 169, 167, 167)),
                    )
                  : const SizedBox(),
              text6 != null
                  ? Text(
                      text6 ?? 'TEXTO 6',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
