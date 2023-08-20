//Agregação e composição
import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(this._nome);
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(this._nome) : _dependentes = [];

  void inserirDependente(String dependenteNome) {
    _dependentes.add(Dependente(dependenteNome));
  }

  void listarFuncionario() {
    print("Funcionario: $_nome \n");
    print("Dependentes: \n");
    for (var dependente in _dependentes) {
      print("Nome: ${dependente._nome}");
    }
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(this._nomeProjeto, this._funcionarios);

  void listarFuncionariosProjeto() {
    print("Funcionarios do projeto: $_nomeProjeto");
    for (var funcionario in _funcionarios) {
      print("\nNome: ${funcionario._nome} \n");
      funcionario.listarFuncionario();
    }
  }
}

void main() {
  // 1. Criar varios objetos Dependentes
  // 2. Criar varios objetos Funcionario
  // 3. Associar os Dependentes criados aos respectivos
  //    funcionarios
  // 4. Criar uma lista de Funcionarios
  // 5. criar um objeto Equipe Projeto chamando o metodo
  //    contrutor que da nome ao projeto e insere uma
  //    coleção de funcionario
  // 6. Printar no formato JSON o objeto Equipe Projeto.
  String equipeProjetoNome = "Equipe Instituto Iracema";

  Funcionario funcionario1 = Funcionario("Letícia")
    ..inserirDependente("Mãe da Letícia")
    ..inserirDependente("Pai da Letícia")
    ..inserirDependente("Vó da Letícia")
    ..inserirDependente("Vô da Letícia");

  Funcionario funcionario2 = Funcionario("Eduardo")
    ..inserirDependente("Mãe do Eduardo")
    ..inserirDependente("Pai do Eduardo")
    ..inserirDependente("Vó do Eduardo")
    ..inserirDependente("Vô do Eduardo");

  List<Funcionario> funcionarios = [funcionario1, funcionario2];

  EquipeProjeto equipe = EquipeProjeto(equipeProjetoNome, funcionarios);

  print("Listagem da equipe:");
  equipe.listarFuncionariosProjeto();

  print("\nFuncionario 1 antes de ser excluido \n");
  funcionario1.listarFuncionario();
  funcionario1 = Funcionario("Funcionario Excluído");

  print("\nFuncionario 1 após ser excluído \n");
  print("valor do funcionario1 : $funcionario1");

  print("\nEquipe antes de ser excluída: \n");
  equipe.listarFuncionariosProjeto();
  equipe = EquipeProjeto("Equipe Excluída", []);

  print("\nEquipe após a exclusão: \n");
  print("valor da equipe : $equipe \n");

  print("Funcionario 2 depois da exclusão da equipe: \n");
  funcionario2.listarFuncionario();
}
