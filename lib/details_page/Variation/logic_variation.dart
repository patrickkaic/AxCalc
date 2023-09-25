class CalculadoraVariation {
  static String calcularVariacao(
      double maiorSis, double maiorDia, double menorSis, double menorDia) {
    double result = ((maiorSis - maiorDia) - (menorDia - menorSis)) /
        ((maiorSis - maiorDia) + (menorDia - menorSis)) /
        2 *
        100;
    return '${result.toStringAsFixed(2)} %';
  }

  static String showValue(double maiorSis) {
    return 'Maior Sistólica Inspiratória: $maiorSis';
  }

  static String showValue2(double maiorDia) {
    return 'Maior Diastólica Inspiratória: $maiorDia';
  }

  static String showValue3(double menorSis) {
    return 'Menor Sistólica Inspiratória: $menorSis';
  }

  static String showValue4(double menorDia) {
    return 'Menor Diastólica Inspiratória: $menorDia';
  }
}
