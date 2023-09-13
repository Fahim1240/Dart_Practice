import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int inputNumber = int.parse(stdin.readLineSync()!);

  if (inputNumber % 2 == 0) {
    print("$inputNumber is even.");
  } else {
    print("$inputNumber is odd.");
  }
}
