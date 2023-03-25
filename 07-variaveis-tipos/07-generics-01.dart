// A classe Par dois atributos que podem ser de qualquer tipo <T>
//
class Par<T> {
  T x;
  T y;
  Par(this.x, this.y);
}

// É demonstrado o uso de um par de Int e um par de String
void main() {
  var parInt = Par<int>(10, 20);
  print('x=${parInt.x},y=${parInt.y}');

  var parStr = Par<String>('José', 'Maria');
  print('x=${parStr.x},y=${parStr.y}');
}
