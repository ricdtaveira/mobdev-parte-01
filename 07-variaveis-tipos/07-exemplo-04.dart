// 07-exemplo-04.dart
// String e Runes

void main() {
  String mensagem = 'Olá, mundo!';
  print(mensagem);

  Runes emoticon = new Runes(
      '\u{1F600}'); // Código Unicode para o emoticon "grinning face with big eyes"
  String emoticonString = new String.fromCharCodes(emoticon);
  print(emoticonString);
}
