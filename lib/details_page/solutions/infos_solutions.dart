import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/ButtonInfo/gloss.dart';
import 'package:axcalc/Componets/ButtonInfo/info_button.dart';
import 'package:flutter/material.dart';

class InfoButtonSolutions extends StatelessWidget {
  const InfoButtonSolutions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          AppBarCalcs(label: 'Conversor de Soluções'),
          InfoScreen(
              text: 'Como funciona o cálculo do conversor de soluções?',
              text2: 'MGML = 10 * SP'),
          GlossScreen(
            text2: 'SP = Solução a (%)',
            text3: 'MGML = Equivalente a (mg/ml)',
          )
        ],
      ),
    );
  }
}
