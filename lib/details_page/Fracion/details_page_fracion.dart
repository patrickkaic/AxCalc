import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/TextForms/labeled_textform.dart';
import 'package:axcalc/Componets/ToggleSwitch/toggleswitch.dart';
import 'package:axcalc/Componets/buttons/main_button.dart';
import 'package:axcalc/details_page/Fracion/result_fracion.dart';
import 'package:flutter/material.dart';

class DetailsPageFracion extends StatefulWidget {
  const DetailsPageFracion({super.key});

  @override
  State<DetailsPageFracion> createState() => _DetailsPageFracionState();
}

class _DetailsPageFracionState extends State<DetailsPageFracion> {
  TextEditingController inputController1 = TextEditingController();
  TextEditingController inputController2 = TextEditingController();
  TextEditingController inputController3 = TextEditingController();
  int unidade = 0;

  _calcularFracion() {
    double doseD = double.parse(inputController1.text);
    double doseA = double.parse(inputController2.text);
    double volume = double.parse(inputController3.text);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ResultadoFracion(doseD, doseA, unidade, volume)));
  }

  _toggleUnidade(int? index) {
    setState(() {
      unidade = index ?? 0;
    });
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
          const AppBarCalcs(label: 'Dose Fracionada'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledTextForm(
                label: 'DOSE DESEJADA',
                controller: inputController1,
                suffix: '',
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ToggleSwitchs(
                    title: 'UNIDADE',
                    labels: const ['mcg', 'mg', 'g'],
                    onToggle: _toggleUnidade,
                    selectedIndex: unidade,
                    minHeight: 55,
                    minWidth: 58,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledTextForm(
                label: 'DOSE APRESENTAÇÃO',
                controller: inputController2,
                suffix: 'mcg  ',
              ),
              LabeledTextForm(
                label: 'VOL. APRESENTAÇÃO',
                controller: inputController3,
                suffix: 'ml',
              )
            ],
          ),
          MainButton(text: 'CALCULAR', onPressed: _calcularFracion)
        ],
      ),
    );
  }
}
