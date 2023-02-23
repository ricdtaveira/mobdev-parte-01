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

>> **7. Object:** em Orientação a Objetos, representa a classe pai na hierarquia. É 
        a superclasse de todas as outras classes com exceção do `Null`.

>> **8. dynamic:** Utilizado para desabilitar a tipagem estática. 

>> **9. Future e Stream:** Utilizados na programação assíncrona, veremos mais em 
        seus tópicos. 

>> **10. void:** indica um valor que não deve ser utilizado, tipicamente usado em retorno de funções e métodos. Teremos mais sobre ele no capítulo de funções.

>> **11. Never:** um tipo especial que indica que uma função nunca encerrará normalmente. Teremos mais sobre ele no capítulo de funções.

>> **12. Function:** É um tipo que representa as funções da linguagem. Veremos mais 
         sobre esse tipo no tópico sobre funções.

>
É possível identificar em tempo de execução qual é o tipo de uma determinada variável através 
da propriedade `runtimeType` presente em `Object`. Já que todos os tipos são objetos 
essa propriedade é definida para os demais tipos existentes.
>

### 5.2.1 Os tipos String e Runes ###
>
O código abaixo demonstra o uso dos tipos `String` e `Runes`.
>
>
Nesse exemplo, a variável mensagem é uma variável do tipo String, que armazena a 
mensagem "Olá, mundo!". 
>
Essa mensagem é exibida na tela utilizando o comando print().
>
>
A seguir, é criada uma variável emoticon do tipo Runes, que armazena o 
código Unicode para o emoticon "grinning face with big eyes" (😀). 
>
> 
Em seguida, a variável emoticon é convertida em uma `string` utilizando o método 
`fromCharCodes()`, e a string resultante é exibida na tela também utilizando o 
comando `print()`.
>
```
void main() {
  String mensagem = 'Olá, mundo!';
  print(mensagem);
  
  Runes emoticon = new Runes('\u{1F600}'); // Código Unicode para o emoticon "grinning face with big eyes"
  String emoticonString = new String.fromCharCodes(emoticon);
  print(emoticonString);
}
```
### 5.2.2 Os Tipos num, int e double ###
>
O tipo `num` é a classe base para os tipos numéricos int e double. 
>
>
O tipo `int` é utilizado para representar números inteiros, enquanto o tipo `double`
é utilizado para representar números de ponto flutuante
>

>
Segue abaixo um exemplo de código que utiliza os tipos `num`, `int` e 
`double` em Dart:

>
```
void main() {
  int idade = 30;
  double altura = 1.75;
  
  num resultado = idade * altura;
  print('O resultado é: $resultado');
  
  int resultadoInteiro = idade ~/ altura;
  print('O resultado inteiro é: $resultadoInteiro');
  
  double resultadoDouble = idade / altura;
  print('O resultado em ponto flutuante é: $resultadoDouble');
}

```

### 5.2.3 Os Tipo bool ###

### 5.2.4 Os Tipos iterable, list, set e map ###
>
Os tipos `Iterable`, `List`, `Set` e `Map` são utilizados para lidar com coleções 
de objetos.
>
>
O Código Dart a seguir exemplica ouso desses tipos. 
>
>
Adiante esse tipos serão tratados
em tópicos especificos.
>
.
```
void main() {
  // Exemplo de uso do tipo List
  List<int> numeros = [1, 2, 3, 4, 5];
  print('Números: $numeros');
  
  // Exemplo de uso do tipo Set
  Set<String> nomes = {'Alice', 'Bob', 'Carlos', 'Alice'};
  print('Nomes: $nomes');
  
  // Exemplo de uso do tipo Map
  Map<String, String> telefones = {
    'Alice': '+55 11 99999-1111',
    'Bob': '+55 21 99999-2222',
    'Carlos': '+55 31 99999-3333'
  };
  print('Telefones: $telefones');
  
  // Exemplo de iteração sobre um Iterable
  Iterable<String> frutas = ['maçã', 'banana', 'laranja'];
  for (String fruta in frutas) {
    print(fruta);
  }
}

```
>
### 5.2.5 O Tipo Symbol ###
>
o tipo `Symbol` é usado para representar uma identificação única de um nome. 
>
>
Um `Symbol` é imutável e pode ser usado como chave em um `Map`.
>
>
O Código abaixo exemplifica o uso de `Symbol`.
>
```
void main() {
  // Criando um Symbol
  Symbol s1 = Symbol('nome');
  
  // Comparando dois Symbols
  Symbol s2 = #nome;
  print(s1 == s2); // Imprime "true"
  
  // Utilizando um Symbol como chave em um Map
  Map<Symbol, dynamic> pessoa = {
    #nome: 'Alice',
    #idade: 30,
    #email: 'alice@example.com'
  };
  
  // Acessando os valores do Map utilizando Symbols
  print(pessoa[#nome]); // Imprime "Alice"
  print(pessoa[#idade]); // Imprime "30"
  print(pessoa[#email]); // Imprime "alice@example.com"
}
```
>
No exemplo acima, criamos um `Symbol` utilizando o construtor `Symbol('nome')`. 
>
>
Um Symbol é criando também utilizando a sintaxe `#nome`.
>
>
O operador `==` é usado para comparar dois `Symbol` e verificar se são iguais.
>

Em seguida, utilizamos um `Symbol` como chave em um `Map`, criando um dicionário 
que armazena informações de uma `pessoa`.
>
>
 O operador `#` é usado para criar os `Symbol` diretamente no `Map`.
>
>
Finalmente, os valores do `Map` são acessados utilizando os `Symbol` como chaves. 
>
>
Não é possível utilizar a sintaxe convencional de chaves `({})` para acessar os 
valores, é necessário utilizar o operador `[]`.
>


### 5.2.6 O Tipo Null ###

