import 'dart:math';

class Service {
  Service({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  static String getFaixa(String categoria) {
    switch (categoria) {
      case "Desnutrição Grau V":
        return "< 10 kg/m2";
        break;
      case "Desnutrição Grau IV":
        return "10-12,9 kg/m2";
        break;
      case "Desnutrição Grau III":
        return "13-15,9 kg/m2";
        break;
      case "Desnutrição Grau II":
        return "16-16,9 kg/m2";
        break;
      case "Desnutrição Grau I":
        return "17-18,4 kg/m2";
        break;
      case "Normal":
        return "18,5-24,9 kg/m2";
        break;
      case "Pré-obesidade":
        return "25-29,9 kg/m2";
        break;
      case "Obesidade Grau I":
        return "30-34,9 kg/m2";
        break;
      case "Obesidade Grau II":
        return "35-39,9 kg/m2";
        break;
      case "Obesidade Grau III":
        return "> 40 kg/m2";
        break;
      default:
        return "Faixa não encontrada";
    }
  }

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 10) {
      return "Desnutrição Grau V";
    } else if (_bmi < 13) {
      return "Desnutrição Grau IV";
    } else if (_bmi < 16) {
      return "Desnutrição Grau III";
    } else if (_bmi < 17) {
      return "Desnutrição Grau II";
    } else if (_bmi < 18.5) {
      return "Desnutrição Grau I";
    } else if (_bmi < 25) {
      return "Normal";
    } else if (_bmi < 30) {
      return "Pré-obesidade";
    } else if (_bmi < 35) {
      return "Obesidade Grau I";
    } else if (_bmi < 40) {
      return "Obesidade Grau II";
    } else {
      return "Obesidade Grau III";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você está acima do peso normal. Tente se exercitar mais.';
    } else if (_bmi > 18.5) {
      return 'Você tem um peso normal, bom trabalho!';
    } else {
      return 'Você tem um peso menor que o normal. Você pode comer um pouco mais.';
    }
  }
}
