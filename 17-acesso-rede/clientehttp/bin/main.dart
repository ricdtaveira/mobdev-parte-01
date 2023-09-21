import 'dart:convert';
import 'dart:io';

main() async {
  // Cria um cliente HTTP
  var client = HttpClient();

  // Envia uma solicitação GET para o servidor
  var request =
      await client.getUrl(Uri.parse('http://viacep.com.br/ws/01001000/json/'));
  var response = await request.close();

  // Lê a resposta do servidor e a exibe na tela
  var responseBody = await response.transform(utf8.decoder).join();
  print(responseBody);

  // Fecha o cliente HTTP
  client.close();
}
