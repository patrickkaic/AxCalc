import 'package:axcalc/details_page/IMC/details_page_imc.dart';
import 'package:axcalc/details_page/infusion/details_page_infusion.dart';
import 'package:axcalc/details_page/jejum/details_page_jejum.dart';
import 'package:axcalc/details_page/solutions/details_page_solutions.dart';
import 'package:axcalc/homescreen/home_page.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> appRotes = [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return HomePage();
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
];
