//
//

class Calculadora {
  static int somar(int x, int y) {
    return x + y;
  }
}

int main() {
  int a = 10;
  int b = 20;
  print(Calculadora.somar(a, b));
  return 0;
}
