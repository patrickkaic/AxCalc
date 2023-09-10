class CalculadoraInfunsion {
  static String calcularTaxa(double volume, double horas) {
    double taxa = volume / horas;
    return '${taxa.toStringAsFixed(2)} ml/h';
  }

  static String showValue(double volume) {
    return 'Volume: ${volume}ml';
  }

  static String showValue2(double horas) {
    return 'Tempo Total de Infusão: ${horas}h';
  }
}
