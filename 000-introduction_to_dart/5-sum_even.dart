int sumOfEvenNumbers(List<int> numbers) {
  int sum = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      // Check if the number is even
      sum += number;
    }
  }

  return sum;
}

void main() {
 
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17 ];
  print(sumOfEvenNumbers(numbers)); // Output: 72
}
