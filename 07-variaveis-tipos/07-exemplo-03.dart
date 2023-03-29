// o7-exemplo-03.dart
void main() {
  // Declaração e inicialização de variáveis numéricas
  int idade = 30;
  double altura = 1.75;
  num peso = 75.5;

  // Declaração e inicialização de variáveis booleanas
  bool ehEstudante = true;
  bool temFilhos = false;

  // Declaração e inicialização de variáveis de texto
  String nome = 'João da Silva';
  String cidade = "São Paulo";
  String sobrenome = '''da Silva''';

  // Declaração e inicialização de variáveis dinâmicas
  dynamic variavelDinamica = 'Sou uma string';
  variavelDinamica = 100;

  // Declaracao de Constante

  const pi = 3.14;
  

  // Impressão das variáveis na tela
  print('pi: $pi');
  print('Idade: $idade');
  print('Altura: $altura');
  print('Peso: $peso');
  print('É estudante? $ehEstudante');
  print('Tem filhos? $temFilhos');
  print('Nome completo: $nome $sobrenome');
  print('Cidade: $cidade');
  print('Variável dinâmica: $variavelDinamica');
}
