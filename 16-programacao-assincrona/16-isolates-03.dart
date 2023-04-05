// Neste exemplo, a função main() cria um novo isolate usando a
// função Isolate.spawn(), passando como argumento a função doAsyncOperation
// e um SendPort para enviar o resultado da operação assíncrona de volta
// para o isolate principal.
//
// Enquanto o isolate criado está executando a operação assíncrona, a
// thread principal continua executando outras tarefas, como aguardar por
// um período de tempo usando a função Future.delayed().

// Quando a operação assíncrona é concluída, o resultado é enviado de volta
// para o isolate principal através do ReceivePort criado anteriormente.

// Esse exemplo demonstra como os isolates podem ser usados em conjunto
// com operações assíncronas para criar um programa concorrente e não
// bloqueante, onde diferentes tarefas são executadas simultaneamente sem
// afetar o desempenho do programa.

import 'dart:io';
import 'dart:async';
import 'dart:isolate';

void main() async {
  // Criando um isolate para executar uma operação assíncrona
  final receivePort = ReceivePort();
  await Isolate.spawn(doAsyncOperation, receivePort.sendPort);

  // Executando outras tarefas enquanto aguarda a conclusão da operação assíncrona
  print('Iniciando outras tarefas...');
  await Future.delayed(Duration(seconds: 1));
  print('Continuando outras tarefas...');

  // Recebendo o resultado da operação assíncrona
  final result = await receivePort.first;
  print('Resultado: $result');
}

void doAsyncOperation(SendPort sendPort) async {
  // Executando uma operação assíncrona em um isolate separado
  final result = await File('./16-programacao-assincrona/arquivo.txt').readAsString();
  sendPort.send(result);
}
