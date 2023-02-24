# 13. Funções #
>
Função é o conceito mais utilizado em liguagens de programação. 
>
>
São as funções que realmente que realizam a computação.  
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

### 13.1.1 Estrutura de uma Função ###
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
