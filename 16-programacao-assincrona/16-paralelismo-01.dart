// Neste exemplo, a função main() cria 5 isolates usando a função 
// Isolate.spawn(), passando como argumento a função doTask e um SendPort 
// para enviar o resultado da tarefa de volta para o isolate principal.

// Enquanto os isolates criados estão executando a tarefa em paralelo, 
// a thread principal continua executando outras tarefas, como aguardar 
// por um período de tempo usando a função Future.delayed(). 

// Quando todas as tarefas em paralelo são concluídas, os resultados são 
// recebidos de volta pelos isolates principais através dos ReceivePort 
// criados anteriormente.

// Esse exemplo demonstra como é possível executar tarefas em paralelo 
// em Dart usando isolates e como lidar com a comunicação entre isolates 
// usando SendPort e ReceivePort
//

import 'dart:isolate';

void main() async {
  // Criando 5 isolates para executar uma tarefa em paralelo
  final isolatePorts = List<SendPort>.generate(5, (i) => null);

  final isolateReceivePorts = List<ReceivePort>.generate(5, (i) => ReceivePort());
  
  await Future.wait(List.generate(5, (i) async {
    final receivePort = isolateReceivePorts[i];
    final sendPort = receivePort.sendPort;
    final isolate = await Isolate.spawn(doTask, sendPort);
    isolatePorts[i] = isolate.controlPort;
  }));

  // Executando outras tarefas enquanto aguarda a conclusão da tarefa em paralelo
  print('Iniciando outras tarefas...');
  await Future.delayed(Duration(seconds: 1));
  print('Continuando outras tarefas...');

  // Recebendo o resultado da tarefa em paralelo
  final results = await Future.wait(List.generate(5, (i) => isolateReceivePorts[i].first));
  print('Resultado: $results');
}

void doTask(SendPort sendPort) {
  // Executando uma tarefa em um isolate separado
  final result = 'Resultado da tarefa';
  sendPort.send(result);
}
