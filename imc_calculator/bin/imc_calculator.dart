import 'dart:math';

void main() {
  final caio = Human(name: "Caio", height: 1.63, weight: 1116);
  print(caio.humanImcInfo());
}

class Human {
  late String name;
  late double height;
  late double weight;

  Human({
    required this.name,
    required this.height,
    required this.weight,
  });

  double imc() {
    final double imcValue = weight / pow(height, 2);
    return imcValue;
  }

  String imcRating(double imcValue) {
    if (imcValue < 18.5) {
      return 'Underweight';
    } else if (imcValue > 18.5 && imcValue < 24.9) {
      return 'Normal';
    } else if (imcValue > 25 && imcValue < 29.9) {
      return 'Overweight';
    } else if (imcValue > 30 && imcValue < 35) {
      return 'Obese';
    } else if (imcValue > 35) {
      return 'Extremey Obese';
    } else {
      return 'Some value inserted was wrong';
    }
  }

  String humanImcInfo() {
    final imcValue = imc();
    final imcRatingValue = imcRating(imcValue);
    return "IMC of $name is $imcRatingValue with imc value of $imcValue";
  }
}
