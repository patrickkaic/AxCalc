class CalculadoraIMC {
  static String calcularIMC(double peso, double altura) {
    double imc = peso / (altura * altura);
    return imc.toStringAsFixed(2);
  }
}
