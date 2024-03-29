import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/TextForms/labeled_textform.dart';
import 'package:axcalc/Componets/buttons/main_button.dart';
import 'package:axcalc/details_page/solutions/result_solutions.dart';
import 'package:flutter/material.dart';

class DetailsPagesSolutions extends StatefulWidget {
  const DetailsPagesSolutions({super.key});

  @override
  State<DetailsPagesSolutions> createState() => _DetailsPagesSolutionsState();
}

class _DetailsPagesSolutionsState extends State<DetailsPagesSolutions> {
  TextEditingController inputController1 = TextEditingController();
  TextEditingController inputController2 = TextEditingController();

  _calcularJejum() {
    double solucao = double.parse(inputController1.text);
    double input = solucao;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoSolutions(solucao, input),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          const AppBarCalcs(label: 'Conversor de Soluções'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledTextForm(
                label: 'CONCENTRAÇÃO DA SOLUÇÃO',
                sizedBoxwidth: 370,
                controller: inputController1,
                suffix: '%',
              ),
            ],
          ),
          MainButton(text: 'CALCULAR', onPressed: _calcularJejum),
        ],
      ),
    );
  }
}
