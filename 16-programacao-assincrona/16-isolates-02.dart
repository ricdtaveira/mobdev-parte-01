//
//
//

import 'dart:isolate';

void minhaFuncao(SendPort sendPort) {
  sendPort.send('Mensagem enviada da nova thread');
}

main() async {
  ReceivePort receivePort = ReceivePort();
  Isolate.spawn(minhaFuncao, receivePort.sendPort);
  print(await receivePort.first); // espera a mensagem ser recebida
}

