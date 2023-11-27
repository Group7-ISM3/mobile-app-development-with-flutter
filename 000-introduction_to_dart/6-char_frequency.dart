Map<String, int> characterFrequency(String inputString) {
  Map<String, int> frequencyMap = {};

  for (int i = 0; i < inputString.length; i++) {
    String character = inputString[i].toLowerCase();

    // Check if the character is alphabetic
    if (character.contains(RegExp(r'[a-z]'))) {
      frequencyMap[character] = (frequencyMap[character] ?? 0) + 1;
    }
  }

  return frequencyMap;
}

void main() {
  // Example:
  String input = "Hello, World!";
  Map<String, int> result = characterFrequency(input);

  print("Character frequency in '$input': $result");
}
//output=Character frequency in 'Hello, World!': {h: 1, e: 1, l: 3, o: 2, w: 1, r: 1, d: 1}