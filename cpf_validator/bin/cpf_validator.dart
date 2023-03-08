// ignore_for_file: public_member_api_docs, sort_constructors_first

void main(List<String> arguments) {
  final cpfCaio = Cpf(cpf: '52998224725');
  cpfCaio.isCpfValid();
}

class Cpf {
  String cpf;
  Cpf({
    required this.cpf,
  });

  bool isCpfValid() {
    if (cpf.length == 11) {
      final first = firstCpfValidator();
      final second = secondCpfValidator();
      if (first == true && second == true) {
        print('CPF is valid');
        return true;
      } else {
        print('CPF is invalid');
        return false;
      }
    } else {
      print('CPF is invalid');
      return false;
    }
  }

  bool firstCpfValidator() {
    double result = 0;
    int multValue = 10;
    String calculo = 'Result:';

    print('First valdiation number:');

    for (var i = 0; i < 9; i++) {
      result = result + (int.parse(cpf[i]) * multValue);
      if (i == 8) {
        calculo = '$calculo (${int.parse(cpf[i])} * $multValue) = $result';
      } else {
        calculo = '$calculo (${int.parse(cpf[i])} * $multValue) +';
      }
      multValue--;
    }
    print(calculo);
    double placeHolder = result;
    result = result % 11;
    print('result = $placeHolder % 11 = $result');
    if (result < 2) {
      result = 0;
      if (int.parse(cpf[9]) == 0) {
        return true;
      } else {
        return false;
      }
    } else {
      double placeHolder = result;
      result = 11 - result;
      print('result = 11 - $placeHolder = $result');
      if (int.parse(cpf[9]) == result) {
        print('First validator number is correct \n');
        return true;
      } else {
        print('First validator number is incorrect \n');
        return false;
      }
    }
  }

  bool secondCpfValidator() {
    double result = 0;
    int multValue = 11;
    String calculo = 'Result: ';

    print('Second valdiation number:');

    for (var i = 0; i < 10; i++) {
      result = result + (int.parse(cpf[i]) * multValue);
      if (i == 9) {
        calculo = '$calculo (${int.parse(cpf[i])} * $multValue) = $result';
      } else {
        calculo = '$calculo (${int.parse(cpf[i])} * $multValue) +';
      }
      multValue--;
    }
    print(calculo);
    double placeHolder = result;
    result = result % 11;
    print('result = $placeHolder % 11 = $result');
    if (result < 2) {
      result = 0;
      if (int.parse(cpf[10]) == 0) {
        return true;
      } else {
        return false;
      }
    } else {
      double placeHolder = result;
      result = 11 - result;
      print('result = 11 - $placeHolder = $result');
      if (int.parse(cpf[10]) == result) {
        print('Second validator number is correct \n');
        return true;
      } else {
        print('Second validator number is incorrect \n');
        return false;
      }
    }
  }
}
