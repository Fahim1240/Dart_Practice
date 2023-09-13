bool isPalindrome(String input) {
  input = input.replaceAll(' ', '').toLowerCase();
  return input == input.split('').reversed.join('');
}

void main() {
  String testString = "madam";

  if (isPalindrome(testString)) {
    print("$testString is a palindrome.");
  } else {
    print("$testString is not a palindrome.");
  }
}
