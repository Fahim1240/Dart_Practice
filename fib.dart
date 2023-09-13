List<int> generateFibonacci(int n) {
  List<int> fibonacciList = [];
  int a = 0, b = 1;

  for (int i = 0; i < n; i++) {
    fibonacciList.add(a);
    int next = a + b;
    a = b;
    b = next;
  }

  return fibonacciList;
}

void main() {
  int n = 10; // Change n to the desired number of Fibonacci numbers
  final fibonacciNumbers = generateFibonacci(n);

  print("The first $n Fibonacci numbers are:");
  print(fibonacciNumbers);
}
