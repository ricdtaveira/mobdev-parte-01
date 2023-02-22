// 05-exemplo-01.dart
// Operadores Aritméticos
void main() {
  // Operadores aritméticos
  int a = 10;
  print('a = $a');

  int b = 3;
  print('b = $b');

  int soma = a + b;
  print('soma = $soma');

  int subtracao = a - b;
  print('subtracao = $subtracao');

  int multiplicacao = a * b;
  print('multiplicação= $multiplicacao');

  double divisao = a / b;
  print('divisao = $divisao');

  int resto = a % b;
  print('resto = $resto');

  int incremento = a++;
  print('incremento = $incremento');

  int decremento = a--;
  print('decremento = $decremento');

  
  

  

  // Operadores bit a bit
  int h = 5; // Em binário: 00000101
  int i = 3; // Em binário: 00000011
  int andBitABit = h & i; // Resultado em binário: 00000001 (1 em decimal)
  int orBitABit = h | i; // Resultado em binário: 00000111 (7 em decimal)
  int xorBitABit = h ^ i; // Resultado em binário: 00000110 (6 em decimal)
  int deslocamentoDireita =
      h >> 1; // Resultado em binário: 00000010 (2 em decimal)
  int deslocamentoEsquerda =
      h << 1; // Resultado em binário: 00001010 (10 em decimal)
}
