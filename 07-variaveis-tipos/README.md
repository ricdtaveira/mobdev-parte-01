# 5. Variáveis e Tipos #
>
Uma variável é uma referência a um valor que pode ser alterado durante
a execução do programa. Toda variável possui um tipo que define a representação 
binária compatível a esse tipo e as operações que são permitidas executam com esse tipo.
>
>
As variáveis permitem armazenar valores de diferentes tipos primitivos, como números, strings,
booleanos, objetos, etc. 
>
## 5.1 Checagem de Tipos #####

>
A linguagem Dart a partir da versão 2.0 implementou o mecanismo `strong mode` que 
passou a ser um padrão no que concerne a tipagem das variavéis. Daí a linguagem 
passou a ser considerada `type safe`.  Tal característica garante a não ocorrencia 
de erros durante a execução.   
>
>
No ecossitema da linguagem Dart há uma ferramenta chamada `dartanalizer` que verifica 
as inconsistências no código relacionadas a tipagem.
>

## 5.2 Os tipos de Dart ##
>
Os tipos da linguagem Dart não se comparam aos tipos primitivos definidos pela 
linguagem Java. 
>
>
Na linguagem Dart os tipos são objetos. Possuem atributos e métodos. 
>
>
Inicialmente apresentaremos os tipos mais comuns como:
>

>> **1. Strings e Runes:** são as representações para trabalhar na criação de texto e 
   manipulação de caracteres Unicode.

>> **2. num, int e double:** são usados para representação de valores numéricos.

>> **3. bool:** É usado para representar um valor lógico booleano.

>> **4. Iterable, List, Set e Map:** São representações de estruturas de dados da 
     linguagem. Serão abordados no topico sobre generics.

>> **5. Symbol:** Usado em modificadores que são imunes ao processo de minificação.

>> **6. Null:** Usado para a representação de valores nulos.

>
Além dos tipos mais comuns citados acima, Dart traz tipos específicos que cumprem 
papéis especiais na linguagem. Como:
>

>> **1. Object:** em Orientação a Objetos, representa a classe pai na hierarquia. É 
        a superclasse de todas as outras classes com exceção do `Null`.

>> **2. dynamic:** Utilizado para desabilitar a tipagem estática. 

>> **3. Future e Stream:** Utilizados na programação assíncrona, veremos mais em 
        seus tópicos. 

>> **4. void:** indica um valor que não deve ser utilizado, tipicamente usado em retorno de funções e métodos. Teremos mais sobre ele no capítulo de funções.

>> **5. Never:** um tipo especial que indica que uma função nunca encerrará normalmente. Teremos mais sobre ele no capítulo de funções.

>> **6. Function:** É um tipo que representa as funções da linguagem. Veremos mais 
         sobre esse tipo no tópico sobre funções.

>
É possível identificar em tempo de execução qual é o tipo de uma determinada variável através 
da propriedade `runtimeType` presente em `Object`. Já que todos os tipos são objetos 
essa propriedade é definida para os demais tipos existentes.
>
