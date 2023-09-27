class CalculadorFracion {
  static String calcularFracao(
      int unidade, double doseD, double doseA, double volume) {
    double? resultado;
    switch (unidade) {
      case 0:
        resultado = ((doseD / doseA) * volume) * 1000;
        break;
      case 1:
        resultado = ((doseD / doseA) * volume);
        break;
      case 2:
        resultado = ((doseD / doseA) * volume) / 1000;
        break;
    }
    return '${resultado?.toStringAsFixed(2)} ml';
  }

  static String showValue(double doseD, int unidade) {
    switch (unidade) {
      case 0:
        return 'Dose Desejada: $doseD mcg';
      case 1:
        return 'Dose Desejada: $doseD mg';
      case 2:
        return 'Dose Desejada: $doseD g';
    }
    return 'Unidade não definida';
  }

  static String showValue2(double doseA) {
    return 'Dose de Apresentação: $doseA mcg';
  }

  static String showValue3(double volume) {
    return 'Volume da Apresentação por Dose: $volume ml';
  }
}
