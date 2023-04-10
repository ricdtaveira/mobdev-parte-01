# 2. Instalação do SDK do DART #

>
O Software Development Kit (SDK) é um conjunto de software´s composto por compilador, utilitários e bibliotecas da linguagem.
>
>
O SDK dá suporte ao processo de edição, compilação, depuração e manutenção do código de uma aplicação.
>
>
O SDK opera em conjunto com uma IDE (Integrated Development Environment). 
>
Um IDE é um software para criar aplicações que combina ferramentas comuns de 
desenvolvedor em uma única interface de usuário gráfica (GUI).
>

## 2.1 Instalação do SDK ##

>
O SDK está disponivel para download em [Site download do DART](https://dart.dev/get-dart/archive/).
>
>
Na seção `stable channel` é possível selecionar o número da versão estável e o sistema operacional 
associado.
>
Um arquivo zipado com a atual versão estável reune todos os componentes do SDK.
>
>
Após fazer o download, descompacte o arquivo zipado em um diretório. 
>
>
O Path (caminho relativo do diretório) onde reside o diretório `bin` deverá compor a lista 
de diretórios da variével de ambiente `PATH` do sistema operacional.
>
>
**Figura-01 Site do SDK do DART**
>
![SDK do Dart.](/98-figuras/02-instalacao/stable.png "SDK do Dart.")
>
**Figura-02 Diretório com o SDK descompactado**
>
>
![Diretório do SDK.](/98-figuras/02-instalacao/diretorio-sdk.png "Diretório do SDK do Dart.")
>
>
**Figura-03 Acesso pelo Painel de Controle às Propriedades das Variáveis de Ambiente do Windows**
>
>
![Painel de Controle acesso às Variavéis de Ambiente do Windows.](/98-figuras/02-instalacao/propriedades.png "Propriedades das Variáveis de Ambiente do Windows.")
>

>
**Figura-04 Variáveis de Ambiente do Windows**
>
>
![Edição de Variavéis de Ambiente do Windows.](/98-figuras/02-instalacao/variaveis-ambiente.png "Edição de Variáveis de Ambiente.")
>

>
**Figura-05 Editar Variáveis de Ambiente PATH**
>
>
![Editar Variável de Ambiente PATH.](/98-figuras/02-instalacao/editar-variavel-ambiente.png "Edição de Variável de Ambiente PATH.")
>

>
**Figura-06 Testar acesso ao SDK pela linha de comando**
>
>
![Teste de acesso ao SDK do DAR.](/98-figuras/02-instalacao/teste-acesso-sdk.png "Teste de Acesso ao SDK.")
>

## 2.2 Teste do SDK do DART ##
>
Um teste de uso do SDK do Dart pode ser feito da seguinte forma:
>
>>
1. Criar um snippet (pequeno trecho de código) DART e salvá-lo em um 
diretório acessível;
1. Entrar nesse diretório com o comando `cd <nome-do-diretório>`; 
1. Executar o snippet DART com o comando `dart run hello.dart`;
>>

### 2.2.1 Código do Snippet ###
>
Criar um arquivo `hello.dart' em um diretório onde é permitido a gravação de arquivos.

```
void main() {
  print('Hello, Dart!');
}

```
### 2.2.2 Compilação e Execução do Snippet ###

>
**Figura-07 Execução do Snippet hello.dat**
>
>
![Execução do snippet hello.dart.](/98-figuras/02-instalacao/cmd-execucao.png "Execução do Snippet.")
>

## 2.3 Atividade ##

>
Executar as seguintes atividades:

>>
1. Instalar o SDK do Dart;
1. Testar a execução de um snippet Dart;
>>

>

# 2.4 Criação de um Projeto DART #
>
Para criar um projeto Dart, deve-se seguir os seguintes passos:
>>
1. Instale o SDK do Dart em seu computador, que pode ser baixado no site oficial: https://dart.dev/get-dart.

1. Abra o terminal ou prompt de comando e crie um diretório para o seu projeto:
>
```
mkdir meu_projeto
cd meu_projeto
```
>
>
1. Inicialize o projeto usando o comando `dart create` seguido do `nome do projeto`:
>
```
dart create meu_projeto
```
>
1. A execução desse comando irá criar uma estrutura de diretórios padrão para o projeto Dart, 
com os arquivos **pubspec.yaml**, **README.md**, **analysis_options.yaml** e um diretório chamado **lib**, 
no qual será criado os arquivos fonte Dart. 

1. Para testar a instalação, execute o seguinte comando para imprimir a mensagem "Hello, World!" na console:
```
dart run bin/main.dart

```
1. O arquivo bin/main.dart contém o código-fonte padrão para o projeto Dart, que inclui uma função main() 
que imprime a mensagem "Hello, World!" na console. Você pode editar esse arquivo ou criar novos arquivos 
no diretório lib para começar a desenvolver seu projeto.
>>
>


