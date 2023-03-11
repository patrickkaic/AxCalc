double calculateBMI(double weight, double height) {
  // Converte a altura para metros
  double heightInMeters = height / 100.0;

  // Calcula o IMC
  double bmi = weight / (heightInMeters * heightInMeters);

  // Arredonda o resultado para uma casa decimal
  return double.parse(bmi.toStringAsFixed(1));
}
