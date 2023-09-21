// Neste exemplo, usamos a biblioteca http para fazer 
// uma chamada HTTP assíncrona. 
// A função fetchUserData é marcada como assíncrona 
// usando async. Dentro dela, usamos await para aguardar 
// a conclusão da chamada HTTP e então verificamos a 
// resposta. 
// Se o código de status for 200 (OK), exibimos a 
// resposta. Se não for, lançamos uma exceção. 
// Na função main, usamos await para esperar a conclusão 
// da operação assíncrona e tratamos quaisquer erros 
// usando try-catch.

import 'package:http/http.dart' as http;

Future<void> fetchUserData() async {
  try {
    // Simula uma chamada HTTP assíncrona
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    
    if (response.statusCode == 200) {
      print('Resposta da API: ${response.body}');
    } else {
      throw Exception('Falha na chamada da API: ${response.statusCode}');
    }
  } catch (error) {
    print('Ocorreu um erro: $error');
  }
}

void main() async {
  print('Início da execução.');

  await fetchUserData();

  print('Fim da execução.');
}
