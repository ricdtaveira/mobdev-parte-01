//
//
//

void main() {
  int idade = -1;

  // Tratamento de exceção
  // O bloco "try" tenta executar o código e se uma exceção for 
  // lançada, o bloco "catch" será executado e a mensagem de erro 
  // será impressa no console.
  try {
    if (idade < 0) {
      throw new Exception('A idade não pode ser negativa.');
    }
  } catch (e) {
    print(e);
  }
}
