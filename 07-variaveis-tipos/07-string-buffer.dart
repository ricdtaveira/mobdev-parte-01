//Tipo Stringbuffer

void main() {
  var buffer = new StringBuffer();

  // adiciona varias cadeias de caracteres
  buffer.write('Olá');
  buffer.write(' ');
  buffer.write('Mundo!');
  

  print(buffer.toString()); // saida: Olá Mundo!

  String mensagem;
  mensagem = "Teste !";
  print(mensagem);
  mensagem = "Novo Teste";
  print(mensagem);
  
}
