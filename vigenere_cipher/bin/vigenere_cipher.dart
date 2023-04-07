import 'dart:math';

class VigenereCipher {
  String message = '';
  List<int> cryptographyKeyList = [];
  List<int> charCodeList = [];
  List messageList = [];

  List randomKeyGenerator(message) {
    message = capitalizeOnlyValidText(message);
    for (var i = 0; i < message.length; i++) {
      charCodeList.add(message[i].codeUnits.first);
      final randomNumber = Random();
      cryptographyKeyList.add(randomNumber.nextInt(100));
    }

    return cryptographyKeyList;
  }

  String capitalizeOnlyValidText(String message) {
    String messageOnlyValidCharaters = message.toUpperCase();
    message = '';
    for (var i = 0; i < messageOnlyValidCharaters.length; i++) {
      if (messageOnlyValidCharaters[i].codeUnits.first >= 65 &&
          messageOnlyValidCharaters[i].codeUnits.first <= 90) {
        message = message + messageOnlyValidCharaters[i];
      }
    }
    return message;
  }

  String encode(List cryptographyKeyList) {
    final List codedMessage = [];
    for (var i = 0; i < charCodeList.length; i++) {
      int charCode = charCodeList[i];
      int cryptographyKey = cryptographyKeyList[i];
      const int chadCodeA = 65;

      int remainderOfSumListsFloat =
          ((charCode + cryptographyKey) % 26) + chadCodeA;

      codedMessage.add(String.fromCharCode(remainderOfSumListsFloat));
    }
    return codedMessage.join();
  }

  decode(String textToBeDecoded, List key) {
    String decodedMassge = '';
    List listToBeDecoded = textToBeDecoded.split('');
    for (var i = 0; i < listToBeDecoded.length; i++) {
      int charDescriptografado =
          (((listToBeDecoded[i].codeUnits.first - key[i]) + 26) % 26) + 65;
      decodedMassge += String.fromCharCode(charDescriptografado);
    }
    return decodedMassge;
  }
}

void main() {
  final test = VigenereCipher();
  final randomKeyGenereted = test.randomKeyGenerator('deus é cantor');
  final mensagemCriptografada = test.encode(randomKeyGenereted);
  final decodedMessage = test.decode(mensagemCriptografada, randomKeyGenereted);
  print('Key');
  print(randomKeyGenereted);
  print('Texto criptografado');
  print(mensagemCriptografada);
  print('Texto descriptografado');
  print(decodedMessage);
}
