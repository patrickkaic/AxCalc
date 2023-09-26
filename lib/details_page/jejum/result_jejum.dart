import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/AppBar/app_bar_result.dart';
import 'package:axcalc/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/Componets/buttons/restart_button.dart';
import 'package:axcalc/Componets/ValueScreen/user_input.dart';
import 'package:axcalc/details_page/jejum/infos_jejum.dart';
import 'package:axcalc/details_page/jejum/logic_jejum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoJejum extends StatefulWidget {
  final double peso;
  final double horas;
  final double inputP;
  final double inputH;
  const ResultadoJejum(this.peso, this.horas, this.inputP, this.inputH,
      {super.key});
  @override
  State<ResultadoJejum> createState() => _ResultadoJejumState();
}

class _ResultadoJejumState extends State<ResultadoJejum> {
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
                    builder: (context) => const InfoButtonJejum()));
          },
        ),
      ),
      body: Column(
        children: [
          const AppBarCalcs(label: 'Reposição de Jejum'),
          ResultContainer(
            text1: 'PRIMEIRA HORA',
            text2: CalculadoraJejum.calcularJejum(widget.horas, widget.peso),
            text3: 'SEGUNDA HORA',
            text4: CalculadoraJejum.calcularJejum2(widget.horas, widget.peso),
            text5: 'TERCEIRA HORA',
            text6: CalculadoraJejum.calcularJejum2(widget.horas, widget.peso),
          ),
          RestartButton(
              text: 'REINICIAR', onPressed: () => GoRouter.of(context).pop()),
          InputUser(
            text1: CalculadoraJejum.showValue(widget.peso),
            text2: CalculadoraJejum.showValue2(widget.horas),
            text3: '',
            text4: '',
          ),
        ],
      ),
    );
  }
}
