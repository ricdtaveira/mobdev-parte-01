void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Nenhum argumento recebido.');
  } else {
    print('Argumentos recebidos:');
    for (var i = 0; i < arguments.length; i++) {
      print('Argumento ${i + 1}: ${arguments[i]}');
    }
  }
}
