import 'package:axcalc/details_page/Componets/AppBar/app_bar.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/details_page/Componets/buttons/restart_button.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/user_input.dart';
import 'package:axcalc/details_page/solutions/logic_solutions.dart';
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
          ResultContainer(
            text1: 'VOLUME',
            text2: CalculadoraSolutions.calcularSolucao(widget.solucao),
          ),
          RestartButton(
              text: 'REINICAR', onPressed: () => GoRouter.of(context).pop()),
          InputUser(
            text1: CalculadoraSolutions.showValue(widget.input),
            text2: '',
            text3: '',
          ),
        ],
      ),
    );
  }
}
