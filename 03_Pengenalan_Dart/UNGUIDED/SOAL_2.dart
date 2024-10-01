import 'dart:io';

void main() {
  stdout.write("Masukkan panjang piramida: ");
  int? panjang = int.tryParse(stdin.readLineSync()!);

  if (panjang != null && panjang > 0) {
    for (int i = 1; i <= panjang; i++) {
      stdout.write(' ' * (panjang - i));
      stdout.write('*' * (2 * i - 1));
      print('');
    }
  } else {
    print("Input tidak valid. Harap masukkan angka positif.");
  }
}
