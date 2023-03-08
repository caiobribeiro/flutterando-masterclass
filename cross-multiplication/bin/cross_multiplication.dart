double crossMultiplication({
  double? a,
  double? b,
  double? c,
  double? d,
}) {
  if (isPossibleToCalculate(a: a, b: b, c: c, d: d) == true) {
    if (a == null) {
      print('a.     c\n    X\nb      d');
      return b! * c! / d!;
    } else if (b == null) {
      print('a     c\n    X\nb;      d');
      return a * d! / c!;
    } else if (c == null) {
      print('a     c;\n    X\nb      d');
      return a * d! / b;
    } else if (d == null) {
      print('a     c\n    X\nb      d.');
      return b * c / a;
    } else {
      return 0;
    }
  } else {
    return 0;
  }
}

bool isPossibleToCalculate({
  double? a,
  double? b,
  double? c,
  double? d,
}) {
  List<double?> values = [a, b, c, d];
  int nullCounter = 0;
  for (var i = 0; i < values.length; i++) {
    if (values[i] == null) {
      nullCounter++;
    }
  }
  if (nullCounter > 1) {
    return false;
  } else {
    return true;
  }
}

String crossMultiplicationReponse({
  double? a,
  double? b,
  double? c,
  double? d,
}) {
  if (isPossibleToCalculate(a: a, b: b, c: c, d: d) == true) {
    return 'Value = ${crossMultiplication(a: a, b: b, c: c, d: d)}';
  } else {
    return 'Not enough numbers';
  }
}

void main() {
  print(crossMultiplicationReponse(a: 242, b: 100, c: 89));
}

// a.          c
//       X         =>   a. = b * c / d
// b           d

// a           c
//       X         =>   b. = a * d / c
// b.          d

// a           c.
//       X         =>   c. = a * d / b
// b           d

// a           c
//       X         =>   d. = b * c / a
// b           d.
