// 06-exemplo-02.dart
// Fluxo de controle switch-case

void main() {
  String diaDaSemana = 'monday';

  switch (diaDaSemana) {
    case 'segunda-feira':
      print('Dia de começar a semana');
      break;
    case 'terça-feira':
      print('Dia de reunião');
      break;
    case 'quarta-feira':
      print('Dia de meio de semana');
      break;
    case 'quinta-feira':
      print('Dia de pensar no final de semana');
      break;
    case 'sexta-feira':
      print('Dia de happy hour');
      break;
    case 'sábado':
    case 'domingo':
      print('Dia da Feijoada');
      break;
    default:
      print('Dia inválido');
  }
}
