//
//
//

import 'dart:io';

void main() {
  final file = File('./15-excecoes/meu_arquivo.txt');
  final conteudo = 'Conteúdo a ser gravado no arquivo';

  try {
    if (!file.existsSync()) {
      throw Exception('Arquivo não encontrado');
    }
    // Grava no arquivo a string Conteudo
    file.writeAsStringSync(conteudo);
    print('Arquivo gravado com sucesso!');
  } on FileSystemException catch (e) {
    print('Erro ao gravar o arquivo: ${e.message}');
  } on Exception catch (e) {
    print('Erro inesperado: ${e.toString()}');
  }
}
