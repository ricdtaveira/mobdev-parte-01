// O modificador late
//

class Pessoa {
  late String _nome;
  late int _idade;

  // Método Construtor Padrão
  Pessoa() {

  }

  // Método Construtor com parametros 
  Pessoa.New(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }

  // Método Acessor.Retorna o valor do atributo _nome.
  // Propriedade que acessa uma fncionalidade como um atributo
  String get nome => _nome;

  // Método Modificador. Altera o valor atributo -nome.
  // Propriedade que acessa uma fncionalidade como um atributo
  set nome(String nome) => _nome = nome;

  int get idade => _idade;

  set idade(int idade) => _idade = idade;
}

void main() {
  Pessoa pessoa1 = Pessoa.New("Maria", 18);

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = "João"; // chama o método modificador "set nome"
  pessoa2.idade = 30; // chama o método modificador "set idade"

  print(pessoa1.nome); // chama o método acessor "get nome"
  print(pessoa1.idade); // chama o método acessor "get idade"

  print(pessoa2.nome); // chama o método acessor "get nome"
  print(pessoa2.idade); // chama o método acessor "get idade"
}
