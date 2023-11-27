int findIndexOfFirstOccurrence(List<int> myList, int target) {
  for (int i = 0; i < myList.length; i++) {
    if (myList[i] == target) {
      return i;
    }
  }

  // If the target is not found, return -1
  return -1;
}

void main() {
  List<int> myNumbers = [1, 3, 5, 7, 9, 3, 11];
  int targetNumber = 5;

  int result = findIndexOfFirstOccurrence(myNumbers, targetNumber);

  if (result != -1) {
    print("$targetNumber found at index $result");
  } else {
    print("$targetNumber not found in the list");
  }
}
//output:5 found at index 2