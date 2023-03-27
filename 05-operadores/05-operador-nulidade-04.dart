// Cascade Nulo

void main() {
  StringBuffer? frase = null;
  frase
    ?..write('Operação ')
    ..write('em ')
    ..write('cascade.');
  print(frase); // > null
}

// Caso o objeto de origem seja nulo, todas as chamadas em cascata 
// retornarão null, evitando uma exceção.