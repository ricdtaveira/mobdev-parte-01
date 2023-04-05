//
//
//

import 'dart:isolate';

void main() async {
  final receivePort1 = ReceivePort();
  final receivePort2 = ReceivePort();

  await Future.wait([
    Isolate.spawn(doTask1, receivePort1.sendPort),
    Isolate.spawn(doTask2, receivePort2.sendPort),
  ]);

  final result1 = await receivePort1.first;
  final result2 = await receivePort2.first;

  print('Resultado 1: $result1');
  print('Resultado 2: $result2');
}

void doTask1(SendPort sendPort) {
  // Receber timestamp no inicio da execução

  // implementar um codigo que execute um determinado
  // Calcular um fatorial, Fibonacci

  // Receber o timestamp após a execuçao
  // retornar o valor para a thread principal

  final result = 'Resultado da tarefa 1';
  sendPort.send(result);
}

void doTask2(SendPort sendPort) {
  final result = 'Resultado da tarefa 2';
  sendPort.send(result);
}
