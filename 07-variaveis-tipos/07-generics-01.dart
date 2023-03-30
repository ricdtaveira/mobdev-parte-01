// A classe Par dois atributos que podem ser de qualquer tipo <T>
//
class Par<T> {
  late T x;
  late T y;
  Par(x, y) {
    this.x = x;
    this.y = y;
  }
}

// É demonstrado o uso de um par de Int e um par de String
void main() {
  dynamic x = 10;
  dynamic y = 20;
  var parInt = Par<int>(x, y);
  print('x=${parInt.x},y=${parInt.y}');

  x = "José";
  y = "Maria";
  var parStr = Par<String>(x, y);
  print('x=${parStr.x},y=${parStr.y}');
}
