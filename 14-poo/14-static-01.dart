class Exemplo {
  static int contador = 0;

  Exemplo() {
    contador++;
  }

  static void mostrarContador() {
    print('O contador é $contador');
  }
}

void main() {
  // ignore: unused_local_variable
  Exemplo objeto1 = Exemplo();
  // ignore: unused_local_variable
  Exemplo objeto2 = Exemplo();
  Exemplo.mostrarContador(); // Imprime "O contador é 2"
}
