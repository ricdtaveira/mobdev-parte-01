//
//
//

import 'dart:isolate';

void minhaFuncao() {
  print('Executando na nova thread');
}

main() async {
  await Isolate.spawn(minhaFuncao);
  print('Executando na thread principal');
}
