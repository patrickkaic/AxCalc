import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/TextForms/labeled_textform.dart';
import 'package:axcalc/Componets/buttons/main_button.dart';
import 'package:axcalc/details_page/infusion/result_infusion.dart';

import 'package:flutter/material.dart';

class DetailsPageInfusion extends StatefulWidget {
  const DetailsPageInfusion({super.key});

  @override
  State<DetailsPageInfusion> createState() => _DetailsPageInfusionState();
}

class _DetailsPageInfusionState extends State<DetailsPageInfusion> {
  TextEditingController inputController1 = TextEditingController();
  TextEditingController inputController2 = TextEditingController();

  _calcularInfusion() {
    double volumes = double.parse(inputController1.text);
    double horas = double.parse(inputController2.text);
    double inputVolume = volumes;
    double inputHoras = horas;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ResultadoTaxa(volumes, horas, inputVolume, inputHoras),
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
          const AppBarCalcs(label: 'Taxa de Infusão em ml/h'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledTextForm(
                label: 'VOLUME',
                controller: inputController1,
                suffix: 'ml',
              ),
              LabeledTextForm(
                  label: 'TEMPO DE INFUSÃO',
                  controller: inputController2,
                  suffix: 'h'),
            ],
          ),
          MainButton(text: 'CALCULAR', onPressed: _calcularInfusion),
        ],
      ),
    );
  }
}
