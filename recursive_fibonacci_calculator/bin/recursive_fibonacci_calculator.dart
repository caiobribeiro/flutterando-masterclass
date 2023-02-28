void main() {
  List<String> branch = [];

  int fibonacciNumber(int indexF) {
    if (indexF <= 1) {
      return 1;
    } else {
      branch.add('fNumber(${indexF - 1}) + fNumber(${indexF - 2}) ');
      print(branch);
      return fibonacciNumber(indexF - 1) + fibonacciNumber(indexF - 2);
    }
  }

  print("Result: ${fibonacciNumber(5)}");
}
