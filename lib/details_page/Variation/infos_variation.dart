import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/ButtonInfo/gloss.dart';
import 'package:axcalc/Componets/ButtonInfo/info_button.dart';
import 'package:flutter/material.dart';

class InfoButtonVariation extends StatelessWidget {
  const InfoButtonVariation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          AppBarCalcs(label: 'Variação de Volume Sistólico'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: InfoScreen(
                text: 'Como funciona o cálculo de variação de volume?',
                text2:
                    'VPP = ([(MSI - MDI) - (MSE - MDE)] / [(MSI - MDI) + (MSE - MDE)]/2) * 100'),
          ),
          GlossScreen(
            text2: 'MSI = Maior Sistólica Inspiratória',
            text3: 'MDI = Maior Diastólica Inspiratória',
            text4: 'MSE = Menor Sistólica Inspiratória',
            text5: 'MDE = Menor Diastólica Inspiratória',
          )
        ],
      ),
    );
  }
}
