//
//
//

import 'dart:async';

void main() async {
  print('Início da execução');
  await executarTarefaAssincrona();
  print('Fim da execução');
}

Future<void> executarTarefaAssincrona() async {
  await Future.delayed(Duration(seconds: 2));
  print('Executando tarefa assíncrona');
}
