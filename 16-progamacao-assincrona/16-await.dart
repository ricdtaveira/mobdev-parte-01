//  o comando await é usado para esperar a conclusão de uma operação assíncrona
// e obter o resultado dessa operação.

// Operações assíncronas em Dart são usadas para executar tarefas que podem
// levar algum tempo para serem concluídas, como solicitações de rede,
// operações de E/S de arquivos, ou outras tarefas que envolvem bloqueio.

// Em vez de esperar que essas operações sejam concluídas antes de continuar a
// executar o restante do código, o Dart permite que elas sejam executadas em
// segundo plano enquanto o restante do código continua sendo executado.

// Quando uma operação assíncrona é iniciada, ela retorna um objeto Future
// que representa o resultado da operação quando estiver concluída.

//Para obter o resultado da operação, você pode usar a palavra-chave await
// seguida pelo objeto Future.

// Isso faz com que a execução do código seja interrompida até que a operação
// seja concluída e o resultado seja retornado.

// Abaixo é apresentado um exemplo simples de como usar o await em Dart para
// esperar o resultado de uma operação assíncrona.

import 'dart:async';

void main() async {
  print('Início da tarefa...');
  final resultado = await Future.delayed(Duration(seconds: 2), () {
    return 'Resultado da tarefa';
  });
  print(resultado);
  print('Fim da tarefa.');
}
