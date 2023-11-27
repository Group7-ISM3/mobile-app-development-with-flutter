List<int> factorizeToPrimeNumbers(int number) {
  List<int> primeFactors = [];

  for (int i = 2; i <= number; i++) {
    while (number % i == 0) {
      primeFactors.add(i);
      number = number ~/ i;
    }
  }

  return primeFactors;
}

void main() {
  int inputNumber = 16;
  List<int> result = factorizeToPrimeNumbers(inputNumber);

  print("Prime factors of $inputNumber: $result");
}
// output: Prime factors of 16: [2, 2, 2, 2]