 int smallestInteger = myList[0];
  for (int num in myList) {
    if (num < smallestInteger) {
      smallestInteger = num;
    }
  }

  return smallestInteger;
}

void main() {
  List<int> myList = [5, 3, 8, 2, 7];
  int result = getSmallestInteger(myList);
  print("Smallest integer is: $result");
}
