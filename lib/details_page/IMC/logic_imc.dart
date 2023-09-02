class CalculadoraIMC {
  static double calcularIMC(double peso, double altura) {
    double imc = peso / (altura * altura);
    return imc;
  }

  static String results(double imc) {
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

  static String calcularPI(int sexo, double altura) {
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

  static String calcularPIC(int sexo, double peso, double altura) {
    double? pesoIdealCorrigido;
    switch (sexo) {
      case 0:
        pesoIdealCorrigido =
            ((altura * 100) - 100) + (0.4 * (peso - ((altura * 100) - 100)));
        break;
      case 1:
        pesoIdealCorrigido =
            ((altura * 100) - 105) + (0.4 * (peso - ((altura * 100) - 105)));
        break;
    }
    return '${pesoIdealCorrigido.toString()} kg';
  }

  static String showValue(int sexo) {
    switch (sexo) {
      case 0:
        return 'Sexo do Paciente: Masculino';
      case 1:
        return 'Sexo do Paciente: Feminino';
    }
    return 'Não definido';
  }

  static String showValue2(double peso) {
    return 'Peso: ${peso}kg';
  }

  static String showValue3(double altura) {
    double alturaF = altura * 100;
    return 'Altura: ${alturaF}cm';
  }
}
