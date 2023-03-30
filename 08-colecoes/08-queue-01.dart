// Fila (Queue)
//
// Neste exemplo, criamos uma fila de inteiros chamada "numeros" usando
// o construtor "from" e adicionamos alguns elementos a ela. Usamos as
// propriedades "first" e "last" para acessar o primeiro e o último
// elemento da fila, respectivamente. Também adicionamos um novo elemento
// à fila usando o método "add" e removemos o primeiro elemento usando o
// método "removeFirst".

import 'dart:collection';

int main() {
  Queue<int> numeros = Queue.from([1, 2, 3, 4, 5]);
  print(numeros.first); // Saída: 1
  print(numeros.last); // Saída: 5
  numeros.add(6);
  print(numeros); // Saída: (1, 2, 3, 4, 5, 6)
  numeros.removeFirst();
  print(numeros); // Saída: (2, 3, 4, 5, 6)
  return 0;
}
