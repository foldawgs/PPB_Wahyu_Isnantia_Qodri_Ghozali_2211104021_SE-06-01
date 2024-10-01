import 'dart:io';

void main() {
  stdout.write("Masukkan bilangan bulat: ");
  int? number = int.tryParse(stdin.readLineSync()!);

  if (number != null) {
    if (isPrime(number)) {
      print("$number adalah bilangan prima.");
    } else {
      print("$number bukan bilangan prima.");
    }
  } else {
    print("Input tidak valid. Harap masukkan bilangan bulat.");
  }
}

bool isPrime(int num) {
  if (num < 2) return false;

  for (int i = 2; i <= num ~/ i; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
