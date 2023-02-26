void main() {
  final int indexF = 10;

  int fibonacciNumber(int indexF) {
    if (indexF <= 2) {
      return 1;
    } else {
      return fibonacciNumber(indexF - 1) + fibonacciNumber(indexF - 2);
    }
  }

  print("Result: ${fibonacciNumber(indexF)}");
}
