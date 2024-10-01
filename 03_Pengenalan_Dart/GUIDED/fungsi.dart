// Function for factorial
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

// Function sapaan
String sapaan(String nama) {
  return "Halo, $nama!";
}

// Function greet
void greet(String name, int age) {
  print('Hello $name, you are $age years old.');
}

void main() {
  // Memanggil fungsi factorial
  print(factorial(6)); // Output: 720

  // Memanggil fungsi sapaan
  String pesan = sapaan("Dart");
  print(pesan); // Output: Halo, Dart!

  // Memanggil fungsi greet
  greet('Alice', 25); // Output: Hello Alice, you are 25 years old.
}
