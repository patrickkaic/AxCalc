import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/ButtonInfo/gloss.dart';
import 'package:axcalc/Componets/ButtonInfo/info_button.dart';
import 'package:flutter/material.dart';

class InfoButtonJejum extends StatelessWidget {
  const InfoButtonJejum({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          AppBarCalcs(label: 'Reposição de Jejum'),
          InfoScreen(
              text: 'Como funciona o cálculo da reposição de jejum?',
              text2: 'H1 = H * P',
              text3: 'H2 e H3 = (H * P) / 2'),
          GlossScreen(
            text2: 'P = Peso',
            text3: 'H = Horas de Jejum',
            text4: 'H1 = Primeira hora',
            text5: 'H2 = Segunda hora',
            text6: 'H3 = Terceira hora',
          )
        ],
      ),
    );
  }
}
