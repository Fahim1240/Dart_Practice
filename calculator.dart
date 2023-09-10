import 'dart:io';

int choice() {
  print("Options: ");
  print("1. Calculate Sum");
  print("2. Calculate Difference");
  print("3. Calculate Product");
  print("4. Calculate Quotient");
  print("5. Exit");

  int? ch;
  while (ch == null) {
    stdout.write("Enter your choice here: ");
    try {
      ch = int.parse(stdin.readLineSync()!);
      if (ch < 1 || ch > 5) {
        print("Wrong input. Please enter a valid choice (1-5).");
        ch = null;
      }
    } catch (e) {
      print("Invalid input. Please enter a valid choice (1-5).");
    }
  }

  return ch;
}

void main() {
  print("******** Welcome to Dart Calculator ********");
  print("");

  do {
    int userChoice = choice();

    if (userChoice == 5) {
      print("Exiting Calculator.");
      break;
    }

    stdout.write("Enter the First number: ");
    double num1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

    stdout.write("Enter the Second number: ");
    double num2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (userChoice) {
      case 1:
        double sum = num1 + num2;
        print("Sum: $sum");
        print("");
        break;
      case 2:
        double difference = num1 - num2;
        print("Difference: $difference");
        print("");
        break;
      case 3:
        double product = num1 * num2;
        print("Product: $product");
        print("");
        break;
      case 4:
        if (num2 != 0) {
          double quotient = num1 / num2;
          print("Quotient: $quotient");
          print("");
        } else {
          print("Cannot divide by 0");
          print("");
        }
        break;
      default:
        print("Wrong input");
        print("");
    }
  } while (true);
}
