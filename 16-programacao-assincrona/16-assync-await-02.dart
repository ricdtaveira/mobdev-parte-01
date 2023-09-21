// Neste exemplo, a função fetchUserData é marcada 
// como assíncrona usando async e retorna um Future<int>.
// Dentro da função main, usamos await para esperar a 
// conclusão da operação assíncrona e obter o resultado. 
// Também demonstramos como lidar com erros usando um 
// bloco try-catch para capturar possíveis exceções 
// lançadas durante a operação assíncrona.

import 'dart:async';

// Função assíncrona que retorna um Future contendo um valor
Future<int> fetchUserData() async {
  // Simula uma operação assíncrona (por exemplo, uma chamada de API)
  await Future.delayed(Duration(seconds: 2));
  return 42; // Valor fictício a ser retornado
}

void main() async {
  print('Início da execução.');

  try {
    // Chamada assíncrona usando await para esperar a conclusão
    int userData = await fetchUserData();
    print('Dados do usuário obtidos: $userData');
  } catch (error) {
    print('Erro ao obter os dados do usuário: $error');
  }

  print('Fim da execução.');
}
