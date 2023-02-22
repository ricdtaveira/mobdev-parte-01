import 'dart:io';

void main() {
  stdout.write("Digite um número inteiro maior que zero: ");
  int numero = int.parse(stdin.readLineSync()!);

  int fatorial = 1;
  for (int i = numero; i > 1; i--) {
    fatorial *= i;
  }

  print("O fatorial de $numero é $fatorial");
}
