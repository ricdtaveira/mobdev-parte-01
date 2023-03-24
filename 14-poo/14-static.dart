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
  Exemplo objeto1 = Exemplo();
  Exemplo objeto2 = Exemplo();
  Exemplo.mostrarContador(); // Imprime "O contador é 2"
}
