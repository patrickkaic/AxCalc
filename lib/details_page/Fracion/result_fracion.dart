import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/AppBar/app_bar_result.dart';
import 'package:axcalc/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/Componets/ValueScreen/user_input.dart';
import 'package:axcalc/Componets/buttons/restart_button.dart';
import 'package:axcalc/details_page/Fracion/infos_fracion.dart';
import 'package:axcalc/details_page/Fracion/logic_fracion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoFracion extends StatefulWidget {
  final double doseD;
  final double doseA;
  final double volume;
  final int unidade;
  const ResultadoFracion(this.doseD, this.doseA, this.unidade, this.volume,
      {super.key});

  @override
  State<ResultadoFracion> createState() => _ResultadoFracionState();
}

class _ResultadoFracionState extends State<ResultadoFracion> {
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
                    builder: (context) => const InfoButtonFracion()));
          },
        ),
      ),
      body: Column(
        children: [
          const AppBarCalcs(label: 'Dose Fracionada'),
          ResultContainer(
            text1: 'DOSE FRACIONADA',
            text2: CalculadorFracion.calcularFracao(
                widget.unidade, widget.doseD, widget.doseA, widget.volume),
          ),
          RestartButton(
              text: 'REINICAR', onPressed: () => GoRouter.of(context).pop()),
          InputUser(
              text1: CalculadorFracion.showValue(widget.doseD, widget.unidade),
              text2: CalculadorFracion.showValue2(widget.doseA),
              text3: CalculadorFracion.showValue3(widget.volume),
              text4: '')
        ],
      ),
    );
  }
}
