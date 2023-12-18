import 'dart:io';

void main() {
  print("BMI Calculator");

  // Get user input for height in centimeters
  stdout.write("Enter your height in centimeters: ");
  double height = double.parse(stdin.readLineSync()!);

  // get user input for weight in kilograms
  stdout.write("Enter your weight in kilograms: ");
  double weight = double.parse(stdin.readLineSync()!);

  // Converting height to meters
  double heightInMeters = convertHeightToMeters(height);

  // Calculating BMI
  double bmi = calculateBMI(heightInMeters, weight);

  // Categorize BMI and display the result
  String category = categorizeBMI(bmi);

  print("\nBMI Result:");
  print("BMI: $bmi kg/m²");
  print("Category: $category");
}

// converting user's height from centimeters to meters
double convertHeightToMeters(double heightInCm) {
  return heightInCm / 100;
}


double calculateBMI(double height, double weight) {
  return weight / (height * height);
}

// Function to categorize BMI
String categorizeBMI(double bmi) {
  if (bmi < 18.5) {
    return "Underweight";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return "Healthy weight";
  } else if (bmi >= 25 && bmi <= 29.9) {
    return "Overweight";
  } else if (bmi >= 30 && bmi <= 34.9) {
    return "Obese";
  } else if (bmi >= 35 && bmi <= 39.9) {
    return "Severely obese";
  } else {
    return "Morbidly obese";
  }
}
