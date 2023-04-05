// 
//
//

import 'dart:async';

void main() {
  print('Início da execução');
  executarTarefaAssincrona(() {
    print('Fim da execução');
  });
}

void executarTarefaAssincrona(Function() callback) {
  Timer(Duration(seconds: 2), () {
    print('Executando tarefa assíncrona');
    callback();
  });
}
