import 'dart:io';

int calculateFactorial(int n) {
  if (n <= 0) {
    return 1; // Factorial of 0 or negative numbers is 1.
  }

  int factorial = 1;

  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }

  return factorial;
}

void main() {
  stdout.write("Enter a positive integer: ");
  int inputNumber = int.parse(stdin.readLineSync()!);

  int factorialResult = calculateFactorial(inputNumber);
  print("The factorial of $inputNumber is: $factorialResult");
}
