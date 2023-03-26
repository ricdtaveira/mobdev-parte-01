// Atribuição nulo

void main() {
  //admite que a variável quantidade pode ser nula
  int? quantidade = null;
  quantidade ??= 10; // se quantidade for nula, recebe o valor 10
  print(quantidade); // > 10
}
