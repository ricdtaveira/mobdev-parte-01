// 05-exemplo-05.dart
// Operadores bit a bit

void main() {
  int h = 5; // Em binário: 00000101
  print('O Valor de h em binário é = ${h.toRadixString(2)}');

  int i = 3; // Em binário: 00000011
  print('O Valor de i em binário é = ${i.toRadixString(2)}');

  int andBitABit = h & i; // Resultado em binário: 00000001 (1 em decimal)
  print('O Valor de andBitABit em binário é = ${andBitABit.toRadixString(2)}');
  print('O Valor de andBitABit em octal é = ${andBitABit.toRadixString(8)}');
  print(
      'O Valor de andBitABit em hexadecimal é = ${andBitABit.toRadixString(16)}');

  int orBitABit = h | i; // Resultado em binário: 00000111 (7 em decimal)
  print('O Valor de orBitABit em binário é = ${orBitABit.toRadixString(2)}');
  print('O Valor de orBitABit em octal é = ${orBitABit.toRadixString(8)}');
  print(
      'O Valor de orBitABit em hexadecimal é = ${orBitABit.toRadixString(16)}');

  int xorBitABit = h ^ i; // Resultado em binário: 00000110 (6 em decimal)
  print('O Valor de xorBitABit em binário é = ${xorBitABit.toRadixString(2)}');
  print('O Valor de xorBitABit em octal é = ${xorBitABit.toRadixString(8)}');
  print(
      'O Valor de xorBitABit em hexadecimal é = ${xorBitABit.toRadixString(16)}');

  int deslocamentoDireita =
      h >> 1; // Resultado em binário: 00000010 (2 em decimal)
  print(
      'O Valor de deslocamentoDireita em binário é = ${deslocamentoDireita.toRadixString(2)}');
  print(
      'O Valor de deslocamentoDireita em octal é = ${deslocamentoDireita.toRadixString(8)}');
  print(
      'O Valor de deslocamentoDireita em hexadecimal é = ${deslocamentoDireita.toRadixString(16)}');

  int deslocamentoEsquerda =
      h << 1; // Resultado em binário: 00001010 (10 em decimal)
  print(
      'O Valor de deslocamentoEsquerda em binário é = ${deslocamentoEsquerda.toRadixString(2)}');
  print(
      'O Valor de deslocamentoEsquerda em octal é = ${deslocamentoEsquerda.toRadixString(8)}');
  print(
      'O Valor de deslocamentoEsquerda em hexadecimal é = ${deslocamentoEsquerda.toRadixString(16)}');
}
