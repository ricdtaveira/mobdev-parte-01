class Pessoa {
  String primeiroNome;
  String ultimoNome;
  int idade;

  Pessoa(this.primeiroNome, this.ultimoNome, this.idade);

  // Construtor alternativo com apenas o primeiro nome e idade
  Pessoa.comPrimeiroNomeEIdade(this.primeiroNome, this.idade) : ultimoNome = '';

  // Construtor com todos os detalhes, incluindo um parâmetro opcional
  Pessoa.comTodosOsDetalhes(this.primeiroNome, this.ultimoNome, this.idade) {
    // Você pode fazer alguma lógica adicional aqui, se necessário
  }

  // Método para exibir os detalhes da pessoa
  void displayInfo() {
    print('Nome: $primeiroNome $ultimoNome');
    print('Idade: $idade');
  }
}

void main() {
  // Usando os diferentes construtores da classe Person
  var pessoa1 = Pessoa('John', 'Doe', 30);
  var pessoa2 = Pessoa.comPrimeiroNomeEIdade('Alice', 25);
  var pessoa3 = Pessoa.comTodosOsDetalhes('Bob', 'Smith', 40);

  // Exibindo as informações das pessoas
  pessoa1.displayInfo();
  print('\n');
  pessoa2.displayInfo();
  print('\n');
  pessoa3.displayInfo();
}
