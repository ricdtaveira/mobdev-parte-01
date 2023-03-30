// Enums ou tipos enumerados são classes especiais que
// representam um número fixo de valores constantes.
// Use o tipo enum para gerenciar um número fixo de constantes.

enum Status {
  pending,
  completed,
  rejected,
}

void main() {
  // exemplo 1 como acessar valores das constantes enum
  print("Exemplo 1");
  print(Status.pending.index);
  print(Status.completed.index);
  print(Status.rejected.index);

  print("Exemplo 2");
  // exemplo 2 como criar uma Lista de valores de enum
  List<Status> statuses = Status.values;
  for (var status in statuses) {
    print(status.name);
  }

  print("Exemplo 3");
  // exemplo 3 usando switch com um enum

  var status = Status.completed;

  switch (status) {
    case Status.pending:
      print('A requisição está pendente');
      break;
    case Status.completed:
      print('A requisição executou com sucesso.');
      break;
    case Status.rejected:
      print('A requisição falhou.');
      break;
  }
}
