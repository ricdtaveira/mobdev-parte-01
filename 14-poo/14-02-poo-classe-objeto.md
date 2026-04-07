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

>
No exemplo acima, o método **somar** pertence à classe **Calculadora** e é estático, o que
significa que podemos chamá-lo diretamente da classe, sem criar uma instância (objeto) da classe 
Calculadora.
>
## Visibilidade de Membros de uma Classe
>

>


