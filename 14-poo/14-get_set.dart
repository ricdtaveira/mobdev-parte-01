// O modificador late
//

class Pessoa {
  late String _nome;
  late int _idade;

  String get nome => _nome;

  set nome(String nome) => _nome = nome;

  int get idade => _idade;

  set idade(int idade) => _idade = idade;
}

void main() {
  Pessoa pessoa = Pessoa();

  pessoa.nome = "João"; // chama o método modificador "set nome"
  pessoa.idade = 30; // chama o método modificador "set idade"

  print(pessoa.nome); // chama o método acessor "get nome"
  print(pessoa.idade); // chama o método acessor "get idade"
}
