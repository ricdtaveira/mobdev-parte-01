// A palavra-chave this significa a instância atual da classe.
// O uso de this quando os parametros do método construtor e
// os atributos que serão inicializados possuem o mesmo nome.
// 
import 'dart:convert';

class Point {
  int x = 0;
  int y = 0;

  // O uso de this quando os parametros do método e os atributos 
  // que serão inicializados possuem o mesmo nome.
  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void reset() {
    this.x = 0;
    this.y = 0;
  }

  void show() {
    print('Point($x,$y)');
  }

  Map<String, dynamic> toJson(){
    return {
      'x': x,
      'y': y
    };
  }
}

void main() {
  var p1 = Point();
  p1.move(10, 20);
  p1.show();
  p1.reset();

//  Map<String, dynamic> pontoJson = p1.toJson();
 // String p1JsonString = json.encode(pontoJson);
 // print(p1JonString);

}