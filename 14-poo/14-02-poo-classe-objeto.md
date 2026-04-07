### Classe e Objeto
>
A Programação Orientada a Objetos consiste em conceber um código onde a solução de um
determinado problema identifica os seguintes elementos:
>
>
1. Um escopo do problema que define a abrangência e os limites da atuação da
solução para resolver o problema;
2. As entidades ou coisas que pertencem ao escopo do problema;
3. As classes que são as definições codificadas das entidades que implementam a
solução do problema;
4. As relações comportamentais e estruturais entre as classes que pertencem ao
escopo do problema.
>

## Classe
>
Uma classe é uma estrutura codificada em uma linguagem de Programação Orientada a Objeto
que define o comportamento e as propriedades de uma entidade. A classe é como um modelo
que define um tipo que possui dados e funcionalidades.
>

## Objeto
>
Um objeto é uma instância de uma classe. Uma instância é como uma variável de programa
que é alocada na memória, possui uma referência que aponta para os dados e acessa o 
comportamentos específicos definidos pela classe à qual pertence.
>

## Membros de uma Classe
>
Um membro de uma classe em POO é um elemento que pertence a essa classe. Essa definição
inclui os atributos e os métodos da classe.
>
>
Os atributos também definidos como variáveis de instância são membros que representam as
propriedades do objeto e armazenam informações específicas para cada instância da classe.
Por exemplo, se a classe é **Aluno**, seus membros de variáveis de instância podem ser
**matricula**, **nome**, **cpf**, **data_de_nascimento**, etc.
Os métodos são membros que definem o comportamento do objeto e realizam funcionalidades
específicas. Por exemplo, se a classe é **NotaFiscal**, seus membros de método podem ser
**imprimirNotaFiscal**, **inserirItemdeNotaFiscal**, **calcularValorNotaFiscal*", etc.
>
>
Existem membros de classe, que são compartilhados por todas as instâncias da classe. Esses
membros podem ser atributos de classe e métodos de classe, que são definidos usando a
palavra-chave **static**.
>
>
Os membros de uma classe podem ser acessados por outras partes do programa usando o
nome da classe seguido de um ponto (.) e o nome do membro. Por exemplo, se a classe é
**Calculadora** e tem um método chamado **somar**, podemos acessá-lo chamando
**Calculadora.somar()**.
>
>
```dart
class Calculadora {
    static int somar (int a, int b){
        return a + b;
    } 
}
```
>
No exemplo acima, o método **somar** pertence à classe **Calculadora** e é estático, o que
significa que podemos chamá-lo diretamente da classe, sem criar uma instância (objeto) da classe 
Calculadora.
>
>
```dart
int resultado = Calculadora.somar(10,15); // resultado 25
print("resultado=$resultado");
```
>
## Visibilidade de Atributos e Métodos
>
Os membros de uma classe (atributos e métodos) possuem visibilidade pública ou privada
reconhecida pelo nome do membro. Se o nome do membro começa pelo símbolo _
(sublinhado/underline) o membro terá visibilidade privada (private), se não começar com _ terá
visibilidade pública.
>
>
A visibilidade privada implementa o **encapsulamento** quando estabelece essa visibilidade para
os membros da classe (atributos e métodos).
>
>
O acesso a atributos públicos de um objeto pode ser feito usando a notação
<nome_do_objeto>.<atributo> para acessar um atributo do objeto ou
<nome_do_objeto>.<metodo> para acessar um método.
>
>
O acesso a atributos e métodos privados só pode ser feito por meio de métodos públicos
definidos na classe. É a única forma de acesso a membros privados de objetos.
>
>
Os métodos assessores e modificadores que veremos a seguir são métodos públicos que são
capazes de acessar membros privados.
>

O Modificador **late**s
>
O modificador **late** em Dart é utilizado para atrasar a inicialização de variáveis, permitindo que
elas sejam inicializadas em um momento posterior ao da declaração.
>
>
Normalmente, quando uma variável é declarada, ela precisa ser inicializada imediatamente com
um valor ou pode ser declarada sem valor e, em seguida, receber um valor em um momento
posterior. No entanto, se uma variável declarada sem valor não for inicializada antes de ser
usada, isso resultará em um **erro em tempo de execução**.
>
>
O modificador **late** permite que uma variável seja declarada sem valor e inicializada
posteriormente antes de ser usada, sem gerar um erro em tempo de execução. A variável é
marcada como **late**, o que significa que ela é declarada sem valor, mas será inicializada antes
da primeira leitura.
>
>
O código abaixo apresenta um exemplo de como usar o modificador late em Dart. Está
disponível em https://github.com/ricdtaveira/mobdev-parte-01/blob/master/14-poo/14-
late.dart.
>
>
```dart
class Pessoa {
late String nome;
late int idade;
Pessoa() {
// Inicializando as variáveis após a criação do objeto
nome = "João";
idade = 30;
}
void imprimirDados() {
print("Nome: $nome, idade: $idade");
}
}
void main() {
Pessoa pessoa = Pessoa();
pessoa.imprimirDados();
}
```
>