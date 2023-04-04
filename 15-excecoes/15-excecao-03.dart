// A resposta do servidor é verificada para garantir que o status code
// seja 200, indicando que a requisição foi bem-sucedida.
// Se ocorrer um erro durante a requisição, uma exceção correspondente
// será lançada e capturada pelo bloco "catch" correspondente.
//
// No caso de uma exceção "SocketException", será exibida a mensagem de
// erro de conexão. Já para exceções "HttpException" e "FormatException",
// o programa exibirá uma mensagem informando que houve um erro na resposta
// do servidor. Para outras exceções inesperadas, a mensagem de erro completa
// será exibida.
//
// É importante lembrar que, ao acessar um servidor web, podem ocorrer
// diversos tipos de exceções, como erro de conexão, resposta inválida do
// servidor, erro de autenticação, entre outros.
//
// O tratamento de exceções deve ser feito de acordo com as necessidades
// do seu programa e as possíveis exceções que podem ocorrer durante a
// comunicação com o servidor.

import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final url = Uri.parse('http://www.ifce.edu.br');

  try {
    var http;
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('Dados recebidos: $data');
    } else {
      throw Exception('Erro na resposta do servidor: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Erro de conexão: ${e.message}');
  } on HttpException catch (e) {
    print('Erro HTTP: ${e.message}');
  } on FormatException catch (e) {
    print('Resposta inválida do servidor: ${e.message}');
  } catch (e) {
    print('Erro inesperado: ${e.toString()}');
  }
}
