//
//
//

import 'dart:io';
import 'package:ftpclient/ftpclient.dart';

main() async {
  // Cria um socket para se conectar ao servidor FTP
  var socket = await Socket.connect('172.16.5.117', 21);

  // Cria um cliente FTP
  var client = FTPClient(socket);

  // Autentica no servidor FTP
  await client.login('guest', '1234');

  // Entra no diretório de trabalho
  await client.changeDirectory('/');

  // Envia um arquivo para o servidor FTP
  var file = File('arquivo.txt');
  var input = file.openRead();
  await client.putFile('arquivo.txt', input);

  // Fecha a conexão com o servidor FTP
  client.disconnect();
}
