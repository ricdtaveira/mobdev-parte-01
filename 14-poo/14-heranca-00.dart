abstract class Animal {
  String nome;
  int idade;
  bool estaVivo;

  Animal(this.nome, this.idade, this.estaVivo);

  void verbalizar();
}

class Cachorro extends Animal {
  String raca;

  Cachorro(String nome, int idade, bool estaVivo, this.raca)
      : super(nome, idade, estaVivo);

  void verbalizar() {
    print('Au au!');
  }
}
