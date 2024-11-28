# Questões de Múltipla Escolha

1. Qual das seguintes afirmações sobre classes em Dart é verdadeira? 
```
a) Classes em Dart podem ser aninhadas umas dentro das outras. 
b) Uma classe em Dart pode herdar de múltiplas superclasses. 
c) Classes em Dart são declaradas em alto nível e não podem ser 
   aninhadas. 
d) Classes em Dart não podem ter atributos ou métodos.
```

2. Como você define um construtor nomeado em Dart? 
a) Usando a palavra-chave constructor. 
b) Usando o nome da classe seguido por um ponto e o nome do 
   construtor. 
c) Adicionando o modificador named antes da palavra-chave 
   constructor. 
d) Construtores nomeados não são permitidos em Dart.

3. Qual a finalidade do operador is em Dart? 
a) Verificar se dois objetos são do mesmo tipo. 
b) Comparar o valor de dois objetos. 
c) Verificar se um objeto é uma instância de uma classe específica.
d) Converter um objeto para um tipo diferente.

4. O que são Mixins em Dart? 
a) Uma forma de herança múltipla. 
b) Uma forma de reutilizar código de múltiplas classes sem 
   herança múltipla. 
c) Classes abstratas que não podem ser instanciadas. 
d) Interfaces que definem métodos que as classes devem implementar.

5. Qual a diferença entre final e const ao declarar atributos 
   de classe em Dart? 
a) Não há diferença, ambos tornam o atributo imutável. 
b) final indica que o valor do atributo pode ser definido 
   apenas uma vez, enquanto const indica que o valor é conhecido 
   em tempo de compilação. 
c) const indica que o valor do atributo pode ser definido 
   apenas uma vez, enquanto final indica que o valor é 
   conhecido em tempo de compilação. 
d) final é usado para atributos de classe, enquanto const é 
   usado para variáveis locais.

6. Qual a sintaxe para sobrescrever um método em uma subclasse 
em Dart? 
a) Use a palavra-chave override antes da assinatura do método. 
b) Use a palavra-chave extends antes da assinatura do método. 
c) Use a palavra-chave super antes da assinatura do método. 
d) Não é possível sobrescrever métodos em Dart.

7. O que acontece quando você tenta acessar um atributo privado 
   de uma classe em Dart? 
a) O código compila normalmente, mas um erro é lançado em tempo 
de execução. 
b) O código não compila, pois atributos privados só podem ser 
acessados dentro da classe. 
c) O código compila normalmente, mas o valor do atributo será null.
d) O código compila normalmente, mas o valor do atributo será 
indefinido.

8. Qual a palavra-chave utilizada para definir uma classe abstrata
   em Dart? 
   a) interface 
   b) abstract 
   c) class 
   d) virtual

9. Como você define um método estático em uma classe Dart? 
a) Usando a palavra-chave static antes da assinatura do método. 
b) Usando a palavra-chave const antes da assinatura do método. 
c) Usando a palavra-chave final antes da assinatura do método. 
d) Métodos estáticos não são permitidos em Dart.

10. Qual a finalidade da palavra-chave super em uma subclasse Dart?
a) Acessar o construtor da superclasse. 
b) Acessar métodos e atributos da superclasse. 
c) Instanciar um objeto da superclasse. 
d) Converter um objeto da subclasse para o tipo da superclasse.

2. Afirmações Verdadeiras ou Falsas
1. Em Dart, é possível criar classes dentro de outras classes, como em Java. Falso. Classes em Dart são declaradas em alto nível e não podem ser aninhadas. [1] 2. Construtores nomeados permitem criar múltiplos construtores para a mesma classe com diferentes parâmetros. Verdadeiro. [2] 3. A herança permite que uma subclasse herde todos os atributos e métodos da superclasse, incluindo os privados. Falso. Atributos e métodos privados só são acessíveis dentro da classe que os define. 4. Interfaces em Dart definem um conjunto de métodos que as classes que as implementam devem ter. Verdadeiro. [6] 5. Mixins são uma forma de herança múltipla em Dart. Falso. Dart não suporta herança múltipla. Mixins permitem reutilizar código de múltiplas classes sem herança múltipla. [4] 6. O operador as é utilizado para realizar um type cast em Dart. Verdadeiro. [7] 7. Atributos declarados com a palavra-chave final podem ter seus valores alterados após a inicialização. Falso. Atributos final podem ser definidos apenas uma vez. [7] 8. Métodos estáticos podem ser acessados diretamente através da classe sem a necessidade de instanciar um objeto. Verdadeiro. 9. Classes abstratas podem ser instanciadas diretamente em Dart. Falso. Classes abstratas servem como modelo para outras classes e não podem ser instanciadas. [6] 10. A palavra-chave this dentro de uma classe se refere à instância atual do objeto. Verdadeiro.

3. Questões Abertas
1. Explique a diferença entre classes e objetos em Dart. Resposta: Uma classe é um modelo ou um blueprint que define as características e comportamentos de um objeto. Um objeto é uma instância de uma classe. Por exemplo, "Carro" seria uma classe, enquanto "meuFusca" seria um objeto da classe "Carro".

2. Descreva o conceito de herança em Dart e como ele é implementado. Resposta: Herança é um mecanismo que permite criar novas classes (subclasses) baseadas em classes existentes (superclasses). A subclasse herda as características e comportamentos da superclasse e pode adicionar seus próprios atributos e métodos ou sobrescrever os existentes. Em Dart, a herança é implementada com a palavra-chave extends.

3. Qual a finalidade dos construtores em Dart? Dê um exemplo de um construtor com parâmetros nomeados. Resposta: Construtores são métodos especiais que são chamados quando um objeto de uma classe é criado. Eles são usados para inicializar os atributos do objeto.

**Exemplo de um construtor com parâmetros nomeados:**

```dart

class Pessoa {

  String nome;

  int idade;



  Pessoa({required this.nome, required this.idade});

}



final pessoa = Pessoa(nome: "Maria", idade: 30);

```

4. Explique o conceito de encapsulamento em Dart e como ele é alcançado. Resposta: Encapsulamento é um mecanismo que protege os dados de um objeto, controlando o acesso aos seus atributos e métodos. Em Dart, o encapsulamento é alcançado usando a visibilidade dos membros da classe. Atributos e métodos privados, denotados por um underscore _ antes do nome, só podem ser acessados dentro da classe.

5. O que são classes abstratas em Dart? Quando você usaria uma classe abstrata? Resposta: Classes abstratas são classes que não podem ser instanciadas diretamente. Elas servem como modelo para outras classes (subclasses) que herdam seus atributos e métodos. Você usaria uma classe abstrata quando precisa definir um modelo geral para um conjunto de objetos, mas não faz sentido criar instâncias diretas dessa classe.

6. Diferencie métodos de instância de métodos estáticos em Dart. Resposta: Métodos de instância operam em uma instância específica de um objeto, enquanto métodos estáticos pertencem à classe em si e podem ser chamados sem instanciar um objeto.

7. Descreva o conceito de polimorfismo em Dart e dê um exemplo de como ele pode ser usado. Resposta: Polimorfismo é a capacidade de um objeto se comportar de diferentes maneiras dependendo do contexto. Em Dart, o polimorfismo é alcançado através da sobrescrita de métodos em subclasses.

**Exemplo:**



```dart

class Animal {

  void fazerSom() {

    print("Som genérico de animal");

  }

}



class Cachorro extends Animal {

  @override

  void fazerSom() {

    print("Au au!");

  }

}



class Gato extends Animal {

  @override

  void fazerSom() {

    print("Miau!");

  }

}

```

8. Como os operadores podem ser sobrescritos em Dart? Dê um exemplo. Resposta: Operadores podem ser sobrescritos em Dart definindo métodos especiais na classe. O nome do método é definido pelo operador que se deseja sobrescrever.

**Exemplo (sobrescrevendo o operador `+`):**



```dart

class Vetor {

  int x;

  int y;



  Vetor(this.x, this.y);



  Vetor operator +(Vetor outroVetor) {

    return Vetor(x + outroVetor.x, y + outroVetor.y);

  }

}

```

9. Explique a diferença entre interfaces e mixins em Dart. Resposta: Interfaces definem um contrato que as classes que as implementam devem seguir, especificando quais métodos a classe deve ter. Mixins, por outro lado, são uma forma de reutilizar código de múltiplas classes. Eles permitem adicionar atributos e métodos a uma classe sem usar herança.

10. Descreva o conceito de imutabilidade em Dart e como ele se aplica a objetos. Resposta: Imutabilidade significa que um objeto, uma vez criado, não pode ter seu estado alterado. Em Dart, objetos imutáveis podem ser criados usando a palavra-chave const ao definir suas propriedades. Objetos imutáveis são mais previsíveis e seguros, pois garantem que seus valores não serão alterados acidentalmente.