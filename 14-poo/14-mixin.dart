// Mixin

mixin Saudacao {
  void saudar(String nome) {
    print('Olá, $nome!');
  }
}

class Pessoa with Saudacao {
  String nome;

  Pessoa(this.nome);
}

void main() {
  Pessoa pessoa = Pessoa('João');
  pessoa.saudar(pessoa.nome);
}
