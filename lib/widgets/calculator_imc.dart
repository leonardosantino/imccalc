import 'dart:math';

class Calculator {
  Calculator(this.height, this.weight){
    _imc = weight / pow(height / 100, 2);
  }

  late final int height;
  late final int weight;
  late double _imc;

  double calculate() {
    return _imc;
  }

  String status() {
    if (_imc >= 25) {
      return 'Over Weight';
    } else if (_imc > 18.5) {
      return 'Normal';
    }
    return 'Under Weight';
  }

  String message() {
    if (_imc >= 25) {
      return 'You are overweight, see your nutritionist to check your diet.';
    } else if (_imc > 18.5) {
      return 'Very well keep taking care';
    }
    return 'You are underweight, you need to increase your daily food amount and consult your nutritionist for food recommendations.';
  }


}
