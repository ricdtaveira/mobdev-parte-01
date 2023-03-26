// Operador Ternário Nulo

void main() {
  int? a = null;
  var valor = a ?? 10.59; //se a for nulo, valor recebe 10.59
  print(valor); // > 10.59
}
