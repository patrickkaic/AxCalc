import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/ButtonInfo/gloss.dart';
import 'package:axcalc/Componets/ButtonInfo/info_button.dart';
import 'package:flutter/material.dart';

class InfoButtonIMC extends StatelessWidget {
  const InfoButtonIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          AppBarCalcs(label: 'IMC, Peso Ideal e Corrigido'),
          InfoScreen(
            text: 'Como funciona o cálculo do IMC?',
            text2: 'IMC = P / (A * A)',
          ),
          InfoScreen(
            text: 'Como funciona o cálculo do peso ideal?',
            text2: 'PI = A - 100, para masculino',
            text3: 'PI = A - 105, para feminino',
          ),
          InfoScreen(
            text: 'Como funciona o cálculo do peso ideal corrigido?',
            text2: 'PIC = PI + (0,4 * (P - PI))',
          ),
          SizedBox(
            height: 20,
          ),
          GlossScreen(
            text2: 'P = Peso',
            text3: 'A = Altura',
            text4: 'PI = Peso ideal',
            text5: 'PIC = Peso ideal corrigido',
          )
        ],
      ),
    );
  }
}
