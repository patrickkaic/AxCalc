class CalculadoraSolutions {
  static String calcularSolucao(double solucao) {
    double result = solucao * 10;
    return '${result.toStringAsFixed(2)} mg/ml';
  }

  static String showValue(double input) {
    return 'Concentração em solução: $input %';
  }
}
