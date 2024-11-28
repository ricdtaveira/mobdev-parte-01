import 'dart:io';
import 'dart:convert';

void main() async {
  const url = 'http://www.ifce.edu.br';

  try {
    // Fazendo a requisição HTTP
    final response = await HttpClient()
        .getUrl(Uri.parse(url))
        .then((request) => request.close());

    // Verificando o status da resposta
    if (response.statusCode == HttpStatus.ok) {
      // Lendo o conteúdo da resposta
      final content = await response.transform(utf8.decoder).join();
      print('Conteúdo da resposta:\n$content');
    } else {
      print('Erro: Status code inválido ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Erro de conexão: ${e.message}');
  } on HttpException catch (e) {
    print('Erro ao acessar a URL: ${e.message}');
  } on Exception catch (e) {
    print('Ocorreu um erro inesperado: ${e.toString()}');
  } finally {
    print('Tratamento de exceção finalizado.');
  }
}
