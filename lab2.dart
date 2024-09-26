import 'dart:io';

void main() {
  print('Please enter your age: ');

  String? input = stdin.readLineSync();

  try {
    if (input == null || input.isEmpty) {
      throw Exception('No input provided.');
    }

    int age = int.parse(input);

    if (age < 0) {
      throw Exception('Age cannot be negative.');
    }

    int yearsLeft = 100 - age;

    if (yearsLeft > 0) {
      print('You have $yearsLeft years left until you turn 100.');
    } else if (yearsLeft == 0) {
      print('Congratulations! You are 100 years old.');
    } else {
      print('You turned 100 years old ${yearsLeft.abs()} years ago.');
    }
  } catch (e) {
    print('Error: Invalid input. Please enter a valid age. $e');
  }
}
