//
//
//

class Pessoa {
  late String nome;
  late int idade;

  // Metodo Construtor
  // Inicializando as variáveis após a criação do objeto

//  Pessoa(String s, int i) {
//   nome = "João";
//   idade = 30;
//  }

  // Pessoa() {
  //  nome = "João";
  //  idade = 30;
  // }

  // Construtor Padrão não recebe nenhum parametro
  //
  //Pessoa() {}
  // Construtor com parametros com o mesmo nome dos atributos
  // Usar o objeto atual com a palavra chave this

  //PessoaNew(String nome, int idade) {
  //  this.nome = nome;
  //  this.idade = idade;
  //}

  Pessoa(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }

  // Um metodo construtor que recebe parametros e modifica
  // diretamente os atributos do objeto criado
  // Pessoa(this.nome, this.idade);

  //Constrtutores Nomeados
  // Recebe

  void imprimirDados() {
    print("Nome: $nome, idade: $idade");
  }
}

void main() {
  // Pessoa pessoa = Pessoa();
  Pessoa pessoa1 = Pessoa("Jose", 30);
  Pessoa pessoa2 = Pessoa("Maria", 24);
  // pessoa.imprimirDados();
  pessoa1.imprimirDados();
  pessoa2.imprimirDados();
}
