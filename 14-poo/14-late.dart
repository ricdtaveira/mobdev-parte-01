class Pessoa {
  late String nome;
  late int idade;

  Pessoa() {
    // Inicializando as variáveis após a criação do objeto
    nome = "João";
    idade = 30;
  }

  void imprimirDados() {
    print("Nome: $nome, idade: $idade");
  }
}

void main() {
  Pessoa pessoa = Pessoa();
  pessoa.imprimirDados();
}
