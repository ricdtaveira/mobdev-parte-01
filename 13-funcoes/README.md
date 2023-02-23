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
Só que agora você adicionou mais três páginas que também devem fechar o programa, 
então bastaria fazer a chamada em todas elas para a mesma função exit().
>
>
O uso de funções permite a modularização de uma aplicação, garantindo um grande 
reaproveitamento de código ao dividir as responsabilidades. 
>
>
Quanto menor for uma função, mais especializada será em realizar apenas uma 
determinada ação. Por consequencia, será mais reutilizável em todos os lugares.
>

### 13.1.1 Estrutura de uma Função###
>
A figura abaixo apresenta a estrtura sintática de uma função.
>
>
![Estrutura de uma função.](/98-figuras/13-funcoes/estrutura_funcao.png "Estrura de uma função.")
>
