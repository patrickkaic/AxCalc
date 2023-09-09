import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/details_page/Componets/buttons/restart_button.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/user_input.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoSolutions extends StatefulWidget {
  final double solucao;
  final double input;
  const ResultadoSolutions(this.solucao, this.input, {super.key});
  @override
  State<ResultadoSolutions> createState() => _ResultadoSolutionsState();
}

class _ResultadoSolutionsState extends State<ResultadoSolutions> {
  _calcularSolucao() {
    double solucao = widget.solucao * 10;
    double result = solucao;
    return '${result.toStringAsFixed(2)} mg/ml';
  }

  _showValue() {
    double input = widget.input;
    return 'Concentração em solução: $input %';
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
          const AppBarCalcs(label: 'Conversor de Soluções'),
          ResultContainer(text1: 'VOLUME', text2: _calcularSolucao()),
          RestartButton(
              text: 'REINICAR', onPressed: () => GoRouter.of(context).pop()),
          InputUser(
            text1: _showValue(),
            text2: '',
            text3: '',
          ),
        ],
      ),
    );
  }
}
