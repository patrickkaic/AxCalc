enum Gender {
  male,
  female,
}

double calculateIMC(double peso, double altura, Gender gender) {
  if (peso <= 0 || altura <= 0) {
    return 0; // Retorna 0 se peso ou altura forem inválidos
  }

  double imc = peso / (altura * altura);

  if (gender == Gender.male) {
    imc += 1; // Ajuste para o IMC masculino (apenas como exemplo)
  }

  return imc;
}
