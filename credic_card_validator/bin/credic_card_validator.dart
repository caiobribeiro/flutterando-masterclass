void main() {
  final myCard = CreditCard(cardNumber: '4916 6418 5936 9080');
  myCard.isCreditCardValid();
}

class CreditCard {
  String cardNumber;
  CreditCard({required this.cardNumber});

  bool isCreditCardValid() {
    List<int> convertedStringToListOfInt = convertStringToListOfInt();
    int lastDigitToVerification =
        removeAndStoreLastDigit(convertedStringToListOfInt);
    List<int> multiplicatedList =
        cardNumberListMultipplication(convertedStringToListOfInt);
    int sumOfTheMultplicatedList =
        sumOfTheMultipplicatedList(multiplicatedList);
    int remainder = 10 - (sumOfTheMultplicatedList % 10);

    if (remainder == lastDigitToVerification) {
      print('\nCartão com número $cardNumber válido');
      return true;
    }
    if (sumOfTheMultplicatedList % 10 == 0 && lastDigitToVerification == 0) {
      print('\nCartão com número $cardNumber válido');
      return true;
    } else {
      print('\nCartão com número $cardNumber inválido');
      return false;
    }
  }

  List<int> convertStringToListOfInt() {
    cardNumber = cardNumber.replaceAll(' ', '');
    List<String> stringCardNumberList = cardNumber.split('');
    List<int> cardNumberList = stringCardNumberList.map(int.parse).toList();

    return cardNumberList;
  }

  int removeAndStoreLastDigit(cardNumberIntList) {
    int lastDigit = cardNumberIntList.removeLast();

    return lastDigit;
  }

  List<int> cardNumberListMultipplication(
      List<int> cardNumberIntListWithOutLastDigitMultiplicated) {
    for (var i = 0;
        i < cardNumberIntListWithOutLastDigitMultiplicated.length;
        i++) {
      if ((i % 2) == 0) {
        print(' Antes: $cardNumberIntListWithOutLastDigitMultiplicated');
        cardNumberIntListWithOutLastDigitMultiplicated[i] =
            cardNumberIntListWithOutLastDigitMultiplicated[i] * 2;
        if (cardNumberIntListWithOutLastDigitMultiplicated[i] > 9) {
          String sumIntDigits =
              '${cardNumberIntListWithOutLastDigitMultiplicated[i]}';

          cardNumberIntListWithOutLastDigitMultiplicated[i] =
              int.parse(sumIntDigits[0]) + int.parse(sumIntDigits[1]);
          print(
              'A multiplicação é maior que 9, a soma dos dígitos $sumIntDigits é ${cardNumberIntListWithOutLastDigitMultiplicated[i]}');
        }
        print('Depois: $cardNumberIntListWithOutLastDigitMultiplicated\n');
      } else {
        print(' Antes: $cardNumberIntListWithOutLastDigitMultiplicated');
        cardNumberIntListWithOutLastDigitMultiplicated[i] =
            cardNumberIntListWithOutLastDigitMultiplicated[i] * 1;
        print('Depois: $cardNumberIntListWithOutLastDigitMultiplicated\n');
      }
    }
    return cardNumberIntListWithOutLastDigitMultiplicated;
  }

  int sumOfTheMultipplicatedList(List<int> multipplicatedList) {
    int sum = 0;
    for (var i = 0; i < multipplicatedList.length; i++) {
      sum += multipplicatedList[i];
    }

    return sum;
  }
}


//   5 4 1 9 - 8 2 5 0 - 0 3 4 6 - 1 2 1                       0
// * 2 1 2 1   2 1 2 1   2 1 2 1   2 1 2  
//   1 4 2 9 + 7 2 1 0 + 0 3 8 6 + 2 2 2  
// =   16         10        17       6  = 49 % 10 = 9 => 10 - 9 = 1


//   4 9 1 6 - 6 4 1 8 - 5 9 3 6 - 9 0 8                       0
// * 2 1 2 1   2 1 2 1   2 1 2 1   2 1 2  
//   8 9 2 6   3 4 2 8   1 9 6 6   9 0 7
// =    25        17        22       16  = 80 % 10 = 0 => 10 - 0 = 10