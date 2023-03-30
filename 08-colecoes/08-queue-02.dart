//
//  Neste exemplo, importamos a classe Queue do pacote 'dart:collection'.
//  Em seguida, criamos uma fila vazia de inteiros chamada "numeros" usando
//  o construtor padrão.
//  Usamos o método "addAll" para adicionar uma lista de números à fila.

// Em seguida, usamos os métodos "add", "removeFirst" e "removeLast"
// para adicionar e remover elementos da fila.
// Também usamos os métodos "addFirst" e "addLast" para adicionar
// elementos no início e no final da fila, respectivamente.

// Também, usamos o método "toList" para obter uma lista dos elementos
// da fila, revertemos a lista usando o método "reversed" e criamos uma
// nova fila "numerosInvertidos" a partir da lista invertida usando o
// método "from".
// Imprimimos "numerosInvertidos" para verificar se os elementos foram
// invertidos corretamente.

import 'dart:collection';

void main() {
  Queue<int> numeros = Queue();
  numeros.addAll([1, 2, 3, 4, 5]);
  print(numeros); // Saída: (1, 2, 3, 4, 5)

  numeros.add(6);
  print(numeros); // Saída: (1, 2, 3, 4, 5, 6)

  numeros.removeFirst();
  print(numeros); // Saída: (2, 3, 4, 5, 6)

  numeros.removeLast();
  print(numeros); // Saída: (2, 3, 4, 5)

  numeros.addFirst(1);
  print(numeros); // Saída: (1, 2, 3, 4, 5)

  numeros.addLast(6);
  print(numeros); // Saída: (1, 2, 3, 4, 5, 6)

  Queue<int> numerosInvertidos = Queue.from(numeros.toList().reversed);
  print(numerosInvertidos); // Saída: (6, 5, 4, 3, 2, 1)
}
