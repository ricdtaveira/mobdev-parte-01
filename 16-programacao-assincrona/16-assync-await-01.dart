// Neste exemplo, a função fetchUserData é marcada como
// assíncrona usando async. Ela simula uma operação
// assíncrona usando Future.delayed para aguardar 2
// segundos.
// Dentro da função main, chamamos fetchUserData usando
// await para aguardar a conclusão da operação assíncrona
// antes de imprimir "Operação assíncrona concluída.".
// Isso demonstra como o uso de await permite que a
// execução aguarde operações assíncronas, mantendo o
// código mais legível e conciso.

Future<void> fetchUserData() async {
  // Simula uma operação assíncrona (por exemplo, uma chamada de API)
  await Future.delayed(Duration(seconds: 2));
  print('Dados do usuário obtidos.');
}

void main() {
  print('Início da execução.');

  fetchUserData().then((_) {
    print('Operação assíncrona concluída.');
  });

  print('Fim da execução.');
}
