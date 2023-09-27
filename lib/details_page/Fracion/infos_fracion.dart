import 'package:axcalc/Componets/AppBar/app_bar.dart';
import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/ButtonInfo/gloss.dart';
import 'package:axcalc/Componets/ButtonInfo/info_button.dart';
import 'package:flutter/material.dart';

class InfoButtonFracion extends StatelessWidget {
  const InfoButtonFracion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          AppBarCalcs(label: 'Dose Fracionada'),
          InfoScreen(
              text: 'Como funciona o cálculo da dose fracionada?',
              text2: 'DF = (DD/DA) * V'),
          SizedBox(
            height: 20,
          ),
          GlossScreen(
            text2: 'DF = Dose fracionada',
            text3: 'DD = Dose desejada',
            text4: 'DA = Dose da apresentação',
            text5: 'V = Volume da apresentação por dose',
          )
        ],
      ),
    );
  }
}
