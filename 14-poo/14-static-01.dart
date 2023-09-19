class Exemplo {
  static int contador = 0;

  Exemplo() {
    contador++;
  }

  static void mostrarContador() {
    print('O contador é $contador');
  }

  int valorContador() {
    return contador;
  }
}

void main() {
  // ignore: unused_local_variable
  Exemplo objeto1 = Exemplo();
  print("Valor do contador do objeto1=${objeto1.valorContador()}");
  // ignore: unused_local_variable
  Exemplo objeto2 = Exemplo();
  print("Valor do contador do objeto1=${objeto1.valorContador()}");
  print("Valor do contador do objeto2=${objeto2.valorContador()}");
  Exemplo.mostrarContador(); // Imprime "O contador é 2"
}
