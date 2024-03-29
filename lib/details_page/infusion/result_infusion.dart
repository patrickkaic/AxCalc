import 'package:axcalc/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/Componets/AppBar/app_bar_result.dart';
import 'package:axcalc/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/Componets/buttons/restart_button.dart';
import 'package:axcalc/Componets/ValueScreen/user_input.dart';
import 'package:axcalc/details_page/infusion/infos_solutions.dart';
import 'package:axcalc/details_page/infusion/logic_infusion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoTaxa extends StatefulWidget {
  final double volume;
  final double horas;
  final double inputVolume;
  final double inputHoras;
  const ResultadoTaxa(
      this.volume, this.horas, this.inputVolume, this.inputHoras,
      {super.key});
  @override
  State<ResultadoTaxa> createState() => _ResultadoTaxaState();
}

class _ResultadoTaxaState extends State<ResultadoTaxa> {
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
                    builder: (context) => const InfoButtonInfusion()));
          },
        ),
      ),
      body: Column(
        children: [
          const AppBarCalcs(label: 'Taxa de Infusão em ml/h'),
          ResultContainer(
            text1: 'Tempo de Infusão',
            text2:
                CalculadoraInfunsion.calcularTaxa(widget.volume, widget.horas),
          ),
          RestartButton(
              text: 'REINICIAR', onPressed: () => GoRouter.of(context).pop()),
          InputUser(
            text1: CalculadoraInfunsion.showValue(widget.volume),
            text2: CalculadoraInfunsion.showValue2(widget.horas),
            text3: '',
            text4: '',
          )
        ],
      ),
    );
  }
}
