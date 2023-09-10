class CalculadoraJejum {
  static String calcularJejum(double horas, double peso) {
    double jejum = horas * peso;
    return '${jejum.toStringAsFixed(2)} ml';
  }

  static String calcularJejum2(double horas, double peso) {
    double jejum = (horas * peso) / 2;
    return '${jejum.toStringAsFixed(2)} ml';
  }

  static String showValue(double peso) {
    return 'Peso: $peso kg';
  }

  static String showValue2(double horas) {
    return 'Tempo: $horas h';
  }
}
