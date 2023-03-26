// Acesso Nulo

// Tudo em Dart é objeto.

void main() {
  int? valor = null; // variavel inteira valor pode ter valor null
  // se valor for null, é mostrado o valor da propriedade bitLength
  print(valor?.bitLength); // > null
}
