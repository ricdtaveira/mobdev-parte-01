// Conjuntos (Sets)
// Os elementso da coleção não se repetem

void main() {
  Set<String> frutas = {'maçã', 'banana', 'laranja'};

  frutas.add('abacaxi');
  print(frutas); // Saída: {maçã, banana, laranja, abacaxi}

  frutas.add('banana');
  print(frutas); // Saída: {maçã, banana, laranja, abacaxi};
}
