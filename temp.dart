import 'dart:io';

void main() {
  stdout.write('Enter the temperature value: ');

  double temperature = double.parse(stdin.readLineSync()!);

  stdout.write(
      'Choose conversion (1 for Celsius to Fahrenheit, 2 for Fahrenheit to Celsius): ');

  int choice = int.parse(stdin.readLineSync()!);

  double result;

  String unitFrom, unitTo;
  if (choice == 1) {
    result = (temperature * 9 / 5) + 32;

    unitFrom = 'Celsius';

    unitTo = 'Fahrenheit';
  } else if (choice == 2) {
    result = (temperature - 32) * 5 / 9;

    unitFrom = 'Fahrenheit';

    unitTo = 'Celsius';
  } else {
    print('Invalid choice. Please choose 1 or 2 for conversion.');

    return;
  }

  print('$temperature $unitFrom is equal to $result $unitTo.');
}
