String intToRoman(int number) {
  if (number <= 0 || number > 3999) {
    // Roman numerals are defined for numbers between 1 and 3999
    return "Invalid input";
  }

  List<String> romanSymbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
  List<int> symbolValues = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];

  StringBuffer result = StringBuffer();

  for (int i = 0; i < romanSymbols.length; i++) {
    while (number >= symbolValues[i]) {
      result.write(romanSymbols[i]);
      number -= symbolValues[i];
    }
  }

  return result.toString();
}

void main() {
  print(intToRoman(30)); // XXX 
  print(intToRoman(20)); // XX
  print(intToRoman(200));// CC
