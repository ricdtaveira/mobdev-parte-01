/* Uso de entrada de dados via teclado
   Neste exemplo, usamos a classe stdin da biblioteca dart:io para 
   receber a entrada do usuário e armazenamos o valor em uma variável 
   chamada numero. 
   A função readLineSync() é usada para ler a entrada do usuário como 
   uma string. A string é convertida para um inteiro usando a função int.parse().

   Em seguida, exibimos o número digitado pelo usuário na tela usando o comando 
   print.
*/

import 'dart:io';

void main() {
  stdout.write("Digite um número inteiro: ");
  //
  int numero = int.parse(stdin.readLineSync()!);
  print("O número digitado foi: $numero");
}

