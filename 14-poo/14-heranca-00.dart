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

  @override
  void verbalizar() {
    print('Au au!');
  }
}

class Gato extends Animal {
  String raca;

  Gato (String nome, int idade, bool estaVivo, this.raca)
      : super(nome, idade, estaVivo);

  @override
  void verbalizar() {
    print('MiiiAu Miiiau!');
  }
}

class Pato extends Animal {
  String raca;

  Pato(String nome, int idade, bool estaVivo, this.raca)
      : super(nome, idade, estaVivo);

  @override
  void verbalizar() {
    print('Quack!');
  }
}

// Utilizando as classes
void main() {
  Animal bicho1 = Cachorro("Rabito", 4, true, "Shitzu");
  Animal bicho2 = Gato("Jerry", 3, true, "Mangará");
  Animal bicho3 = Pato("Billy", 1, true, "Pé Duro");
  
  bicho1.verbalizar(); // Output: Au au!
  bicho2.verbalizar(); // Output: Miau!
  bicho3.verbalizar(); // Output: Quack!
}
