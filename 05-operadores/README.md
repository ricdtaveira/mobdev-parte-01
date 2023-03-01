# Operadores #
>
A programação de computadores consiste em usar uma linguagem de programação 
de alto nivel para definir uma série de comandos que serão traduzidos para 
uma linguagem binária. A linguagem binária gerada é reconhecida pela máquina 
e executa passo a passo as instruções. 
>
>
O entendimeno dessa etapa inicia o aprendizado de algoritmos. O papel de 
uma linguagem de programação de alto nível é abstrair esse código binário
e permitir a comunicação entre humanos e as máquinas através de instruções 
lógicas que nós, humanos, entendemos. 
>
>
Embora haja diferenças de funcionalidades e de sintaxe entre as várias linguagens de 
programação, elas possuem em comum dois conceitos que são a base para a construção 
de instruções: os operadores e as estruturas de controle. 
>
>
Seguiremos apresentando os operadores disponíveis em Dart. 
>

## 5.1 Operadores ##
>
Os operadores são usados na construção de expressões. Expressões são trechos de 
código que possuem, alteram ou executam alguma ação em um valor armazenado em memória
em tempo de execução. 
>
>
O código `x = y - z` é considerado uma expressão. Inicialmente acessa as 
variáveis `y` e `z`. Subtrai o valor da variavel `z` ao valor da variavel `y` 
usando o operador de subtração `-`.
>
>
Em seguida atribui o valor da diferença à variável `x` usando o operador de atribuição =.
>
>
A linguagem Dart possui um conjunto de operadores, que serão apresentados em categorias
de acordo com as expressões em que são usados. 
>

### 5.1.1 Operadores Aritméticos ###
>
Operadores aritméticos são usados em expressões que realizam operações matemáticas.
>
>

| Operador      | Descrição                            | Exemplo             |  
| ------------- |--------------------------------------|---------------------|
| +             | Adição/Concatenação                  | 30 + 5 / '30' + '5' |
| -             | Subtração                            | 40 - 5              |        
| -expressão    | Negação, inverte o sinal da operação | -(-20)              |  
| *             | Multiplicação                        | 8 * 9               |
| /             | Divisão                              | 20 / 3              |
| ~/            | Divisão com retorno da parte inteira | 13 ~/ 2             |
| %             | Resto da Divisão                     | 13 % 2              |
>
Exemplos de expressões aritméticas.
>
>
```
void main() {
  print(40 + 2); // > 42
  print('40' + '2'); // > 402
  print(50 - 8); // > 42
  print(-(-42)); // > 42
  print(6 * 7); // > 42
  print(11 / 2); // > 5.5
  print(11 ~/ 2); // > 5
  print(11 % 2); // > 1
}
```
### 5.1.2.Operadores relacionais e de equalidade ###
>
Operadores relacionais e de equalidade realizam comparações entre os valores de diferentes objetos.
>

| Operador      | Descrição                            | Exemplo             |  
| ------------- |--------------------------------------|---------------------|
| ==            | Equalidade                           | 51 == 51            |
| !=            | Diferença                            | 40 != 5             |        
| > / >=        | Maior / Maior ou igual               | 10 > 5 e 10 > = 10  |  
| < / <=        | Menor / Menor ou igual               | 10 < 5 e 10 <= 10   |

Exemplos de expressões relacionais e de equalidade
```
void main() {
  print(42 == 42); // > true
  print(42 != 42); // > false
  print(42 > 42); // > false
  print(42 >= 42); // > true
  print(42 < 42); // > false
  print(42 <= 42); // > true
}
```

### 5.1.3 Operadores lógicos ###
>
Operadores Lógicos são usados para a construção de expressões booleanas.
>

| Operador      | Descrição                            | Exemplo             |  
| ------------- |--------------------------------------|---------------------|
| *&&*          | AND                                  | true && true        |
| *||*          | OR                                   | true || false       |        
| *!expressão*  | Inversão valor lógico                | !false              | 

Exemplos de expressões com operadores lógicos.
```
void main() {
  print(10 == 10 && 22 <= 10); // > false
  print((10 == 10 && 22 <= 10) || 42 != 42); // > false
  print(!(42 == 42 && 42 <= 10) || 42 != 10); // > true
}

```
### 5.1.4 Operadores de manipulação de bits ###
>

>
### 5.1.5 Operadores de atribuição ###
>

>

### 5.1.6 Operadores de incremento e decremento ###
>

>

### 5.1.7 Operadores de validação de tipos ###
>

>
### 5.1.8 Operadores gerais ###
>

>
### 5.1.9 
>



>