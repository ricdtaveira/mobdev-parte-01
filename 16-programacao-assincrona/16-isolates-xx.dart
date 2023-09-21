// Neste exemplo, Isolate.spawn é usado para criar um novo
// isolate e executar a função isolateFunction dentro dele.
// A comunicação entre o isolate principal e o isolate
// secundário é feita usando um SendPort e um ReceivePort.
// O isolate secundário envia uma mensagem de volta para o
// isolate principal indicando a conclusão de uma operação
// assíncrona simulada.
// Os isolates são úteis em situações onde você deseja
// executar operações intensivas de CPU, operações de E/S
// ou qualquer tarefa demorada de forma paralela sem bloquear
// o isolado principal.
// Eles são especialmente úteis para operações assíncronas
// que podem ser executadas de forma independente.

import 'dart:isolate';

void isolateFunction(SendPort sendPort) {
  // Simula um trabalho assíncrono no isolate
  Future.delayed(Duration(seconds: 2), () {
    sendPort.send('Trabalho concluído no isolate.');
  });
}

void main() async {
  print('Início da execução.');

  // Criação de um ReceivePort para receber mensagens do isolate
  ReceivePort receivePort = ReceivePort();

  // Criação do isolate e comunicação com ele através de um SendPort
  Isolate.spawn(isolateFunction, receivePort.sendPort);

  // Espera pela mensagem do isolate
  var message = await receivePort.first;
  print('Mensagem do isolate: $message');

  print('Fim da execução.');
}
