# 14. Bibliotecas #
>
As linguagens de programação possuem uma estrutura de biblioteca que permite 
a disponibilidade de código fonte dividido em vários arquivos e publicado para 
ser reutiliado por desenvolvedores.
> 
> 
O uso de Bibliotecas promove a modularidade e a reutilização de código e melhora 
a capacidade dos desenvolvedores de trabalhar em diferentes partes da mesma base 
de código. 
> 
> 
O uso de Biblioteca promove o encapsulamento da implementação interna das funcionalidades em 
que compõe essa biblioteca.
>

## 14.1 Definição e importação de Bibliotecas 
>


>
>


>

## 14.2 Definindo uma biblioteca Dart
>
Uma biblioteca Dart é um arquivo .dart que possui uma declaração no início do 
arquivo.
>
>
```
// Biblioteca lib_log.dart

library lib_log;

// Declaração de Funções e Classes

// Funções Top Level (não necessitam estar empacotadas em uma Classe)
debug(msg) => print("DEBUG: $msg");
warn(msg) => print("WARN: $msg");
info(msg) => print("INFO: $msg");


// A Classe Logger tem um método log (msg) que funciona como 
// uma função. 

class Logger {
    log (msg) => print("LOG : $msg");
}
```
## 14.3 Importando uma Biblioteca
>
Importe a biblioteca lib_log usando o comando `import "lib_log.dart"`. Nesse caso o
o arquivo `lib_log.dart` deve estar na mesma pasta do arquivo fonte que a chama.
>
