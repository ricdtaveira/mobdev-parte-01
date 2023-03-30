// 06-exemplo-04.dart
// Fluxo de controle while

void main() {
  int contador = 0;
  while (true) {
    print(contador);
    contador++;
    if (contador == 10) {
      break;
    }
  }
}
