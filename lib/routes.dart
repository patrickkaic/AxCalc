import 'package:axcalc/details_page/IMC/details_page_imc.dart';
import 'package:axcalc/details_page/infusion/details_page_infusion.dart';
import 'package:axcalc/details_page/jejum/details_page_jejum.dart';
import 'package:axcalc/details_page/replacement/details_page_replacement.dart';
import 'package:axcalc/details_page/solutions/details_page_solutions.dart';

import 'package:axcalc/intro_screen/intro_screen.dart';
import 'package:axcalc/homescreen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> appRotes = [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const SplashScreen();
    },
  ),
  GoRoute(
    path: '/home',
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        transitionDuration: const Duration(seconds: 1),
        key: state.pageKey,
        child: HomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            child: child,
          );
        },
      );
    },
  ),
  GoRoute(
    path: '/detalhesimc',
    builder: (context, state) {
      return const DetailsPage();
    },
  ),
  GoRoute(
    path: '/detalhesjejum',
    builder: (context, state) {
      return const detailsPageJejum();
    },
  ),
  GoRoute(
    path: '/detalhesinf',
    builder: (context, state) {
      return const detailsPageInfusion();
    },
  ),
  GoRoute(
    path: '/detalhessol',
    builder: (context, state) {
      return const detailsPagesSolutions();
    },
  ),
  GoRoute(
    path: '/detalhesreplace',
    builder: (context, state) {
      return const detailsPageReplacement();
    },
  ),
];
