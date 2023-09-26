import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/TextForms/labeled_textform.dart';
import 'package:axcalc/Componets/ToggleSwitch/toggleswitch.dart';
import 'package:axcalc/Componets/buttons/main_button.dart';
import 'package:axcalc/details_page/IMC/result_imc.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  TextEditingController inputController1 = TextEditingController();
  TextEditingController inputController2 = TextEditingController();
  int sexo = 0;

  _calcularIMC() {
    double peso = double.parse(inputController1.text);
    double altura = double.parse(inputController2.text) / 100;
    double inputPeso = peso;
    double inputAltura = altura;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ResultadoScreen(peso, altura, sexo, inputPeso, inputAltura),
      ),
    );
  }

  _toggleSex(int? index) {
    setState(() {
      sexo = index ?? 0;
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
          const AppBarCalcs(label: 'IMC, Peso Ideal e Corrigido'),
          const SizedBox(height: 20),
          ToggleSwitchs(
            title: 'SEXO DO PACIENTE',
            labels: const ['Masculino', 'Feminino'],
            onToggle: _toggleSex,
            selectedIndex: sexo,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledTextForm(
                label: 'PESO',
                controller: inputController1,
                suffix: 'kg',
              ),
              LabeledTextForm(
                label: 'ALTURA',
                controller: inputController2,
                suffix: 'cm',
              ),
            ],
          ),
          MainButton(text: 'CALCULAR', onPressed: _calcularIMC)
        ],
      ),
    );
  }
}
