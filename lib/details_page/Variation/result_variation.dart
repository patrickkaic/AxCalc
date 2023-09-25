import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_result.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/user_input.dart';
import 'package:axcalc/details_page/Componets/buttons/restart_button.dart';
import 'package:axcalc/details_page/Variation/infos_variation.dart';
import 'package:axcalc/details_page/Variation/logic_variation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoVariation extends StatefulWidget {
  final double maiorSis;
  final double maiorDia;
  final double menorSis;
  final double menorDia;

  const ResultadoVariation(
      this.maiorSis, this.maiorDia, this.menorSis, this.menorDia,
      {super.key});

  @override
  State<ResultadoVariation> createState() => _ResultadoVariationState();
}

class _ResultadoVariationState extends State<ResultadoVariation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBarResults(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InfoButtonVariation()));
          },
        ),
      ),
      body: Column(
        children: [
          const AppBarCalcs(label: 'Variação de Volume Sistólico'),
          ResultContainer(
            text1: 'VARIAÇÃO',
            text2: CalculadoraVariation.calcularVariacao(widget.maiorSis,
                widget.maiorDia, widget.menorSis, widget.menorDia),
          ),
          RestartButton(
              text: 'REINICAR', onPressed: () => GoRouter.of(context).pop()),
          InputUser(
            text1: CalculadoraVariation.showValue(widget.maiorSis),
            text2: CalculadoraVariation.showValue2(widget.maiorDia),
            text3: CalculadoraVariation.showValue3(widget.menorDia),
            text4: CalculadoraVariation.showValue4(widget.menorSis),
          )
        ],
      ),
    );
  }
}
