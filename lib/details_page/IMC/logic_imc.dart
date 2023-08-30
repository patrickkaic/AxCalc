class CalculadoraIMC {
  static String calcularIMC(double peso, double altura) {
    double imc = peso / (altura * altura);
    return imc.toStringAsFixed(2);
  }
}

String results(double imc) {
  if (imc < 18.5) {
    return "Abaixo do peso";
  }
  if (imc < 24.9) {
    return "Normal";
  }
  if (imc < 29.9) {
    return "Sobrepeso";
  }
  return "Obesidade";
}

String calcularPI(int sexo, double altura) {
  double? pesoIdeal;

  switch (sexo) {
    case 0:
      pesoIdeal = (altura * 100) - 100;
      break;
    case 1:
      pesoIdeal = (altura * 100) - 105;
      break;
  }
  return '${pesoIdeal.toString()} kg';
}
