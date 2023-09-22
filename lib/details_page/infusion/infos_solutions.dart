import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/Componets/ButtonInfo/gloss.dart';
import 'package:axcalc/details_page/Componets/ButtonInfo/info_button.dart';
import 'package:flutter/material.dart';

class InfoButtonInfusion extends StatelessWidget {
  const InfoButtonInfusion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          AppBarCalcs(label: 'Taxa de Infusão em ml/h'),
          InfoScreen(
            text: 'Como funciona o cálculo da taxa de infusão em ml/h?',
            text2: 'TX = V / T, para T em horas',
            text3: 'TX = V / (T / 60), para T em minutos',
          ),
          GlossScreen(
            text2: 'V = Volume',
            text3: 'T = Tempo',
            text4: 'TX = Taxa em ml/h',
          )
        ],
      ),
    );
  }
}
