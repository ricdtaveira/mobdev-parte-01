class Pessoa {
  late String nome;
  late int idade;

  // Metodo Construtor
  //  Pessoa() {
  // Inicializando as variáveis após a criação do objeto
  // Nome donome = "João";
  //    idade = 30;
  //  }

  Pessoa(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }

  void imprimirDados() {
    print("Nome: $nome, idade: $idade");
  }
}

void main() {
  Pessoa pessoa1 = Pessoa("Jose", 30);
  Pessoa pessoa2 = Pessoa("Maria", 24);
  pessoa1.imprimirDados();
  pessoa2.imprimirDados();
}
