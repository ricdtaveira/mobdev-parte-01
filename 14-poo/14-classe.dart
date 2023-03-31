// Classe é um projeto de objeto.
// Para fazer referência ao objeto atual dentro de uma classe, você usa a
// palavra-chave this.
// A palavra-chave this significa a instância atual da classe.
// Use a palavra-chave this para fazer encadeamento de métodos
// tornando o código mais conciso.

class Point {
  int x = 0;
  int y = 0;

  Point move(int x, int y) {
    this.x = x;
    this.y = y;
    return this;
  }

  Point reset() {
    this.x = 0;
    this.y = 0;
    return this;
  }

  Point show() {
    print('Point($x,$y)');
    return this;
  }
}

void main() {
  var p1 = Point();
  p1.move(10, 20).show().reset();
}
