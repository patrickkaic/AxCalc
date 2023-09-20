import 'package:axcalc/details_page/Componets/AppBar/app_bar_calcs.dart';
import 'package:axcalc/details_page/Componets/AppBar/app_bar_result.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/result_container.dart';
import 'package:axcalc/details_page/Componets/buttons/restart_button.dart';
import 'package:axcalc/details_page/Componets/ValueScreen/user_input.dart';
import 'package:axcalc/details_page/IMC/logic_imc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultadoScreen extends StatefulWidget {
  final double peso;
  final double altura;
  final int sexo;
  final double inputPeso;
  final double inputAltura;
  const ResultadoScreen(
      this.peso, this.altura, this.sexo, this.inputPeso, this.inputAltura,
      {super.key});
  @override
  State<ResultadoScreen> createState() => _ResultadoScreenState();
}

class _ResultadoScreenState extends State<ResultadoScreen> {
  @override
  Widget build(BuildContext context) {
    double imc = CalculadoraIMC.calcularIMC(widget.peso, widget.altura);
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBarResults(),
      ),
      body: Column(
        children: [
          const AppBarCalcs(label: 'IMC, Peso Ideal e Corrigido'),
          ResultContainer(
            text1: 'IMC',
            text2: imc.toStringAsFixed(2),
            textSide: CalculadoraIMC.results(imc),
            cores: CalculadoraIMC.textColor(imc),
            text3: 'Peso ideal',
            text4: CalculadoraIMC.calcularPI(widget.sexo, widget.altura),
            text5: 'Peso ideal corrigido',
            text6: CalculadoraIMC.calcularPIC(
                widget.sexo, widget.peso, widget.altura),
          ),
          RestartButton(
              text: 'REINICAR', onPressed: () => GoRouter.of(context).pop()),
          InputUser(
            text1: CalculadoraIMC.showValue(widget.sexo),
            text2: CalculadoraIMC.showValue2(widget.peso),
            text3: CalculadoraIMC.showValue3(widget.altura),
          ),
        ],
      ),
    );
  }
}
