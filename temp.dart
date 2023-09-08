import 'dart:io';

void main() {
  stdout.write('Enter the temperature value: ');

  double temperature = double.parse(stdin.readLineSync()!);

  stdout.write(
      'Choose conversion (1 for Celsius to Fahrenheit, 2 for Fahrenheit to Celsius): ');

  int choice = int.parse(stdin.readLineSync()!);
