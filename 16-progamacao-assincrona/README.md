# 16. Programação Assincrona #

## 16.1 Introdução ##
>
O desempenho de aplicações que acessam recursos externos dependem de diversos 
elementos que influenciam o tempo de resposta de uma requisição.  
>
>
Aplicações que executam de forma sincrona, quando fazem uma requisição a 
um recurso externo só continuam a execução após o recebimento da resposta à
requisição feita a um servidor.
>
>
Essa condição leva a um bloqueio do processamento. Em aplicações que manipulam 
interfaces há um congelamento na tela. Um procesamento posterior só acontece 
depois que uma resposta chega e há continuidade no processamento. 
>
Uma forma de neutralizar esse problema é adotar um mecanismo de assincronismo. 
>

## 16.2 Threads ##
>
Thread é uma unidade básica de processamento que consiste em um fluxo de execução 
de um programa.
>
>
Em outras palavras, uma thread é uma sequência de instruções que podem ser 
executadas simultaneamente com outras sequências de instruções no mesmo programa. 
>
>
Em Dart, as threads são gerenciadas pelo sistema operacional e são usadas para 
executar tarefas concorrentes.
>
>
Embora o Dart possua a classe Thread em sua biblioteca padrão, essa classe é 
considerada obsoleta e não é recomendada para uso. 
>
>
Em Dart, as threads são gerenciadas pela biblioteca dart:isolate. 
>
>
Cada thread é chamada de Isolate e é isolada do restante do programa, 
possuindo seu próprio espaço de memória e pilha de execução.
>
>
Para criar um novo Isolate, é necessário utilizar a função Isolate.spawn(), 
que recebe como parâmetro uma função a ser executada na nova thread. Por exemplo:
>

## 16.3 Isolates ##
>
Dart fornece uma classe chamada isolates como uma alternativa mais moderna e 
segura para a execução de tarefas concorrentes.
>
>
Isolates em Dart são semelhantes às threads, mas são completamente isolados uns 
dos outros.
>
Cada isolate tem sua própria pilha de execução e espaço de memória, o que ajuda 
a evitar problemas de concorrência e compartilhamento de memória. 
>
Os isolates em Dart são executados em threads separadas do sistema operacional, 
o que permite que o programa aproveite o paralelismo do processador.
>
>
O código em Dart apresentado a seguir cria dois isolates e os utiliza para 
executar tarefas concorrentes.
>
>
```
import 'dart:isolate';

void main() async {
  final receivePort1 = ReceivePort();
  final receivePort2 = ReceivePort();

  await Future.wait([
    Isolate.spawn(doTask1, receivePort1.sendPort),
    Isolate.spawn(doTask2, receivePort2.sendPort),
  ]);

  final result1 = await receivePort1.first;
  final result2 = await receivePort2.first;

  print('Resultado 1: $result1');
  print('Resultado 2: $result2');
}

void doTask1(SendPort sendPort) {
  final result = 'Resultado da tarefa 1';
  sendPort.send(result);
}

void doTask2(SendPort sendPort) {
  final result = 'Resultado da tarefa 2';
  sendPort.send(result);
}
```
>
>
O programa principal cria dois isolates usando a função Isolate.spawn(). 
>
>
Cada isolate recebe um SendPort como argumento, que é usado para enviar o 
resultado da tarefa de volta para o programa principal.
>
>
Enquanto os isolates estão executando as tarefas concorrentes, o programa 
principal aguarda a conclusão das tarefas usando o método ReceivePort.first(). 
>
>
Quando os resultados são recebidos de volta pelos isolates principais, eles são 
impressos na tela.
>
>
Este exemplo demonstra como criar e usar isolates em Dart para executar tarefas 
concorrentes sem compartilhar o mesmo espaço de memória.
>

## 16.4 Comunicação Assincrona ##
>
Assincronicidade é um recurso importante em Dart que permite que o programa 
execute tarefas em segundo plano enquanto continua a executar outras tarefas 
sem bloquear a execução do programa principal. 
>
>
Há uma relação entre isolates e assincronismo no Dart. 
>
>
Isolates são usados em Dart para permitir a execução concorrente de código 
em diferentes threads e ajudar a evitar problemas de concorrência e paralelismo. 
>
>
E o assincronismo é uma técnica que permite que o código execute de forma não 
bloqueante, ou seja, enquanto uma operação assíncrona é executada, o programa 
pode continuar executando outras tarefas.
>
>
O isolamento de código em diferentes threads em Dart ajuda a prevenir problemas 
de concorrência e paralelismo, já que cada thread isolada possui seu próprio 
espaço de memória e pilha de execução. 
>
Isso significa que cada thread pode executar seu próprio código de forma 
independente, sem interferir em outras threads.
>
>
Já o assincronismo é utilizado em Dart para executar tarefas que podem levar 
algum tempo para serem concluídas, como operações de entrada e saída (I/O) e 
chamadas de rede. Em vez de bloquear a execução do programa enquanto a operação 
é realizada, a operação é executada em segundo plano e o programa pode continuar 
executando outras tarefas enquanto aguarda a conclusão da operação assíncrona.
>
>
O isolamento de código em diferentes threads pode ser utilizado em conjunto 
com operações assíncronas para criar um programa concorrente e não bloqueante. 
>
Por exemplo, é possível executar uma operação assíncrona em uma nova thread 
utilizando a biblioteca dart:isolate, enquanto a thread principal continua 
executando outras tarefas. 
>
Isso pode ajudar a melhorar o desempenho do programa e evitar bloqueios 
enquanto operações assíncronas são executadas.
>

>
O código abaixo exemplifica o uso de isolates e assicronismo.
>
>
```
import 'dart:io';
import 'dart:async';
import 'dart:isolate';

void main() async {
  // Criando um isolate para executar uma operação assíncrona
  final receivePort = ReceivePort();
  await Isolate.spawn(doAsyncOperation, receivePort.sendPort);

  // Executando outras tarefas enquanto aguarda a conclusão da operação assíncrona
  print('Iniciando outras tarefas...');
  await Future.delayed(Duration(seconds: 1));
  print('Continuando outras tarefas...');

  // Recebendo o resultado da operação assíncrona
  final result = await receivePort.first;
  print('Resultado: $result');
}

void doAsyncOperation(SendPort sendPort) async {
  // Executando uma operação assíncrona em um isolate separado
  final result = await File('arquivo.txt').readAsString();
  sendPort.send(result);
}
```
>
>
No exemplo acima, a função main() cria um novo isolate usando a função 
Isolate.spawn(), passando como argumento a função doAsyncOperation e um 
SendPort para enviar o resultado da operação assíncrona de volta para o 
isolate principal.
>
>
Enquanto o isolate criado está executando a operação assíncrona, a thread 
principal continua executando outras tarefas, como aguardar por um período 
de tempo usando a função Future.delayed(). 
>
Quando a operação assíncrona é concluída, o resultado é enviado de volta 
para o isolate principal através do ReceivePort criado anteriormente.
>
>
Esse exemplo demonstra como os isolates podem ser usados em conjunto com 
operações assíncronas para criar um programa concorrente e não bloqueante, 
onde diferentes tarefas são executadas simultaneamente sem afetar o desempenho 
do programa.
>
## 16.6 Formas de tratar o Assincronismo ##
>
Em Dart, existem duas principais formas de se trabalhar com assincronicidade: 
callbacks e Future/async-await.
>

### 16.6.1 Callbacks ###
>
Callbacks são funções que são chamadas quando uma operação assíncrona é concluída.
>
>
 Essa técnica pode ser utilizada em Dart, mas pode levar a um código complicado 
 e difícil de manter. 
 >
 >
 O seguinte código demonstra como usar callbacks para executar uma 
 tarefa assíncrona em Dart:
>
```
import 'dart:async';

void main() {
  print('Início da execução');
  executarTarefaAssincrona(() {
    print('Fim da execução');
  });
}

void executarTarefaAssincrona(Function() callback) {
  Timer(Duration(seconds: 2), () {
    print('Executando tarefa assíncrona');
    callback();
  });
}

```
