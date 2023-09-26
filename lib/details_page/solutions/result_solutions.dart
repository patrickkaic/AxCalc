import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/AppBar/app_bar_result.dart';
import 'package:axcalc/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/Componets/buttons/restart_button.dart';
import 'package:axcalc/Componets/ValueScreen/user_input.dart';
import 'package:axcalc/details_page/solutions/infos_solutions.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBarResults(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InfoButtonSolutions()));
          },
        ),
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
            text4: '',
          ),
        ],
      ),
    );
  }
}
