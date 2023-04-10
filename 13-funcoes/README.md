# 13. Funções #
>
Função é o conceito mais utilizado em linguagens de programação. 
>
>
Uma função funciona como uma máquina que recebe insumos de entrada (dados), processa 
esses insumos(executa passo a passo um algoritmo) e produz uma saída (dados processados).
>
>
São as funções que realmente realizam a computação.  
>
>
 O termo função é usado livremente para definir funções e métodos de todas as 
 formas sintáticas, mesmo que se comportem como funções matemáticas ou não.
>
>
Nesse tópico abordaremos os seguintes conceitos:
>
>>1. O que são as funções, métodos e closures;
>>2. Os tipos `void` e `Never`;
>>3. O escopo de uma função;
>>4. Os diferentes tipos de parâmetros em uma função;
>>5. `enums` e `typedef`.
>

## 13.1 Definição de uma Função ##
>
Funções são blocos de código que podem ser executados `n` vezes a partir de outros
blocos de código. 
>
Por exemplo, você tem um programa e quer que, ao clicar no botão X da sua página 
inicial, ele seja fechado. Para isso, você chamaria uma função exit(). 
>
A partir do momento em que é necesssário mais locais no programa onde essa funcionalidade é 
chamada basta chamar a função exit(). Teremos então um código para a função. E vários locais onde 
essa funcionalidade é chamada para executar.
>
>
O uso de funções permite a modularização de uma aplicação, garantindo um grande 
reaproveitamento de código ao dividir as responsabilidades. 
>
>
Quanto menor for uma função, mais especializada será em realizar apenas uma 
determinada ação. Por consequencia, será mais reutilizável em todos os lugares.
>
>
Em geral, tudo que é aplicado a funções também se aplica a métodos. Método é um 
tipo especial de função definida em uma classe. Classes serão explicadas no tópico sobre 
POO.
>
### 13.1.1 Anatomia de uma Função Dart ###
>
A figura abaixo apresenta a estrutura sintática de uma função.
>
**Figura 13.1 extraído do livro O Guia de Dart**
>
![Estrutura de uma função.](/98-figuras/13-funcoes/estrutura_funcao.png "Estrura de uma função.")
>
>
Na definição de uma função temos:
>
>> 1. O tipo que a função retorna. Toda função executa uma funcionalidade que 
      pode retornar um valor ou não. Quando retorna um valor, o tipo declarado da
      função deve ser compatível com esse valor (`int`, `double`, `String`, ...). Quando 
      não retorna um valor, o tipo associado a função deverá ser o `void`. 
>> 2. O nome da função que deverá ser adequado à funcionalidade executada pela função;
>> 3. Os parametros de entrada da função são envolvidos por parenteses. Uma função pode ter parametros 
      ou não. As funções que não possuem parametros são chamadas de proedimentos. 
>> 4. O corpo da função composta por expressões que realizam o processamento da função;
>> 5. O retorno da função é a sua saída. A palavra chave `return` define a saída da
      função.
>

## 13.2 Parametros de uma Função ##
>
Uma função geralmente possui uma lista de parâmetros.
>
Há situações onde a lista de parâmetros é vazia. Esse caso acontece 
em funções que executam métodos assessores onde parametros são omitidos. 
>
>
Os parâmetros são posicionais ou nomeados.
>
>
As funções podem receber quatro tipos diferentes de parâmetros:
>>
1. **Parâmetros posicionais**: são parâmetros que são passados para a função pela 
posição em que aparecem na lista de argumentos. Eles são separados por vírgulas 
e não têm um nome associado. Por exemplo:
```
void soma(int a, int b) {
  print(a + b);
}

soma(2, 3); // saída: 5

```
Acima vemos que os parâmetros a e b são posicionais, pois são passados pela 
posição em que ocupam na lista de argumentos.

1. **Parâmetros nomeados**: são parâmetros que são identificados pelo nome na 
lista de argumentos. Eles são precedidos por um símbolo : e podem ser passados 
em qualquer ordem. Por exemplo:
```
void mostrarDados(String nomeAluno, {int matricula, String endereco}) {
  print('Nome: $nomeAluno');
  print('Matricula: $matricula');
  print('Endereço: $endereco');
}

mostrarDados('João da Silva', matricula: 20230030, endereco: 'Av. Carapinima'); 
// saída:
// Nome: João da Silva
// Matricula: 20230030
// Endereço: Av. Carapinima
```

1. *Parâmetros opcionais*: são parâmetros que podem ou não ser passados para a 
função. Eles são representados pelo símbolo ? após o nome do parâmetro e podem 
ser posicionais ou nomeados. Por exemplo:
```

```
>>
>

