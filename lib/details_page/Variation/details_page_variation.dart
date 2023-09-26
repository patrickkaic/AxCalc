import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/TextForms/labeled_textform.dart';
import 'package:axcalc/Componets/buttons/main_button.dart';
import 'package:axcalc/details_page/Variation/result_variation.dart';
import 'package:flutter/material.dart';

class DetailsPageVariation extends StatefulWidget {
  const DetailsPageVariation({super.key});

  @override
  State<DetailsPageVariation> createState() => _DetailsPageVariationState();
}

class _DetailsPageVariationState extends State<DetailsPageVariation> {
  TextEditingController inputController1 = TextEditingController();
  TextEditingController inputController2 = TextEditingController();
  TextEditingController inputController3 = TextEditingController();
  TextEditingController inputController4 = TextEditingController();

  _calcularVariacao() {
    double maiorSis = double.parse(inputController1.text);
    double maiorDia = double.parse(inputController2.text);
    double menorSis = double.parse(inputController3.text);
    double menorDia = double.parse(inputController4.text);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ResultadoVariation(maiorSis, maiorDia, menorDia, menorSis),
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
          const AppBarCalcs(label: 'Variação de Volume Sistólico'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledTextForm(
                titulo: 'Inspiração',
                label: 'MAIOR SISTÓLICA',
                controller: inputController1,
                suffix: '',
              ),
              LabeledTextForm(
                titulo: '',
                label: 'MAIOR DIASTÓLICA',
                controller: inputController2,
                suffix: '',
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledTextForm(
                titulo: 'Expiração',
                label: 'MENOR SISTÓLICA',
                controller: inputController3,
                suffix: '',
              ),
              LabeledTextForm(
                titulo: '',
                label: 'MENOR DIASTÓLICA',
                controller: inputController4,
                suffix: '',
              ),
            ],
          ),
          MainButton(text: 'Calcular', onPressed: _calcularVariacao)
        ],
      ),
    );
  }
}
