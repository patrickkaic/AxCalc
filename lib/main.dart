import 'package:axcalc/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const Color onPrimary = Color(0xFF468EF7);

void main() => runApp(const AxCalc());

class AxCalc extends StatefulWidget {
  const AxCalc({super.key});

  @override
  State<AxCalc> createState() => _AxCalcState();
}

class _AxCalcState extends State<AxCalc> {
  GoRouter rotas = GoRouter(routes: appRotes);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AxCalc',
      debugShowCheckedModeBanner: false,
      routerDelegate: rotas.routerDelegate,
      routeInformationParser: rotas.routeInformationParser,
      routeInformationProvider: rotas.routeInformationProvider,
    );
  }
}
