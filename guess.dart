import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int targetNumber = random.nextInt(100) + 1;
  int numberOfTries = 0;

  print("Guess the number between 1 and 100.");

  while (true) {
    stdout.write("Enter your guess: ");
    int? userGuess = int.tryParse(stdin.readLineSync()!);

    if (userGuess == null) {
      print("Invalid input. Please enter a valid number.");
      continue;
    }

    numberOfTries++;

    if (userGuess < targetNumber) {
      print("Too low! Try again.");
    } else if (userGuess > targetNumber) {
      print("Too high! Try again.");
    } else {
      print(
          "Congratulations! You guessed the correct number $targetNumber in $numberOfTries tries.");
      break;
    }
  }
}
