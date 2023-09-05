import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/IMC/logic_imc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoScreen extends StatefulWidget {
  final double peso;
  final double altura;
  final int sexo;
  final double inputPeso;
  final double inputAltura;
  const ResultadoScreen(
      this.peso, this.altura, this.sexo, this.inputPeso, this.inputAltura,
      {super.key});
  @override
  State<ResultadoScreen> createState() => _ResultadoScreenState();
}

class _ResultadoScreenState extends State<ResultadoScreen> {
  @override
  Widget build(BuildContext context) {
    double imc = CalculadoraIMC.calcularIMC(widget.peso, widget.altura);
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          const AppBarCalcs(label: 'IMC, Peso Ideal e Corrigido'),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Container(
              height: 260,
              width: 350,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 233, 235, 240),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Resultado',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        const Text(
                          'IMC',
                          style: TextStyle(fontSize: 17),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              CalculadoraIMC.results(imc),
                              style: TextStyle(
                                  fontSize: 17,
                                  color: CalculadoraIMC.textColor(imc),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(imc.toStringAsFixed(2),
                          style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Peso Ideal',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        CalculadoraIMC.calcularPI(widget.sexo, widget.altura),
                        style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Peso ideal corrigido',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          CalculadoraIMC.calcularPIC(
                              widget.sexo, widget.peso, widget.altura),
                          style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 120,
            height: 100,
            child: FittedBox(
              child: FloatingActionButton.extended(
                backgroundColor: const Color.fromARGB(80, 70, 142, 247),
                elevation: 0,
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                label: const Text(
                  'REINICIAR',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'ENTRADAS',
                    style: TextStyle(
                        color: Color.fromARGB(255, 169, 167, 167),
                        fontSize: 15),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    CalculadoraIMC.showValue(widget.sexo),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    CalculadoraIMC.showValue2(widget.peso),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    CalculadoraIMC.showValue3(widget.altura),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
