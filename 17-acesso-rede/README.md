# 17. Acesso a Rede #

## 17.1 Introdução ##
>
A linguagem Dart implementa uma biblioteca para acessar dispositivos em uma rede 
usando o protocolo **TCP/IP**. É uma biblioteca de programação desenvolvida pelo 
Google chamada **'dart:io'**. 
>
>
Ela fornece uma abstração de nível mais alto para o acesso ao protocolo **TCP/IP**, 
simplificando a comunicação de rede em aplicativos Dart.
>
>
A biblioteca **dart:io** implementa classes para trabalhar com sockets **TCP** e **UDP** 
(protocolos da `camada de transporte`), ou permitindo que os desenvolvedores implementem protocolos 
de rede personalizados ou utilizem protocolos da `camada de aplicação` existentes, como **HTTP**, 
**FTP**, **SMTP**,  etc. 
>
>
Os desenvolvedores podem usar a classe Socket para criar um socket **TCP** e 
a classe **DatagramSocket** para criar um socket **UDP**.
>

## 17.2 HTTP ##
>
O protocolo **HTTP** é uma parte fundamental da comunicação de rede na web. 
>
>
Na linguagem Dart, a biblioteca padrão **dart:io** fornece classes para implementar 
clientes e servidores **HTTP**.
>
>
Para enviar uma solicitação **HTTP** em Dart, o desenvolvedor pode usar a classe 
**HttpClient** e a classe **HttpClientRequest**. 
>
>
O código abaixo faz um envia uma solicitação **HTTP GET** para o servidor "exemplo.com" na porta 80.
>
>
```
import 'dart:io';

main() async {
  // Cria um cliente HTTP
  var client = HttpClient();

  // Envia uma solicitação GET para o servidor
  var request = await client.getUrl(Uri.parse('http://exemplo.com'));
  var response = await request.close();

  // Lê a resposta do servidor e a exibe na tela
  var responseBody = await response.transform(utf8.decoder).join();
  print(responseBody);

  // Fecha o cliente HTTP
  client.close();
}
```
>
Acima no código é criado um cliente **HttpClient** que usa o método **getUrl()** 
para criar uma solicitação HTTP GET para o servidor "exemplo.com". 
>
>
Ele envia a solicitação usando o método **close()** da classe **HttpClientRequest** 
e lê a resposta do servidor usando o método **transform()** e **join()** da classe 
**HttpResponse**. Ao final, fecha o cliente **HttpClient**.
>
>
No código podemos ver o método **await**. Ele é usado para esperar a conclusão 
das operações de leitura e gravação de rede. 
>
>
Isso ocorre porque essas operações são **assíncronas** e podem levar algum tempo 
para serem concluídas.
>
>
Finalizando, o protocolo **HTTP** na linguagem Dart é implementado por meio da 
biblioteca padrão **dart:io**, que fornece classes para enviar e receber 
solicitações **HTTP**. 
>
>
O desenvolvedor pode criar uma solicitação **HTTP** usando a classe **HttpClient** e 
enviar a solicitação usando a classe **HttpClientRequest**. 
>
O desenvolvedor pode então ler a resposta do servidor usando a classe 
**HttpResponse**.
>

## 17.3 FTP ##

>
O protocolo FTP (File Transfer Protocol) é um protocolo de rede usado para transferir arquivos 
entre um cliente e um servidor. 
>
Na linguagem Dart, é possível implementar um cliente FTP usando a biblioteca dart:io.
>
>
Para se conectar a um servidor FTP em Dart, o desenvolvedor pode usar a classe Socket e a classe FTPClient. 
>
>
O código abaixo é um exemplo de como conectar-se a um servidor FTP, autenticar e transferir um arquivo:
>
>
```
import 'dart:io';

main() async {
  // Cria um socket para se conectar ao servidor FTP
  var socket = await Socket.connect('ftp.exemplo.com', 21);

  // Cria um cliente FTP
  var client = FTPClient(socket);

  // Autentica no servidor FTP
  await client.login('usuario', 'senha');

  // Entra no diretório de trabalho
  await client.changeDirectory('/exemplo');

  // Envia um arquivo para o servidor FTP
  var file = File('arquivo.txt');
  var input = file.openRead();
  await client.putFile('arquivo.txt', input);

  // Fecha a conexão com o servidor FTP
  client.disconnect();
}

```
>
Neste exemplo, o código cria um socket para se conectar ao servidor FTP "ftp.exemplo.com" na porta 21. 
>
Em seguida, ele cria um cliente FTP e autentica usando o método login(). 
>
O cliente FTP entra no diretório de trabalho usando o método changeDirectory(). 
>
Ele envia um arquivo chamado "arquivo.txt" para o servidor FTP usando o método putFile(), 
que recebe um fluxo de entrada como parâmetro.
>
>
Observe que o código usa o método await para esperar a conclusão das operações de 
leitura e gravação de rede, bem como a autenticação. 
>
>
Isso ocorre porque essas operações são assíncronas e podem levar algum tempo para serem concluídas.
>
>
Finalizando, o FTP na linguagem Dart é implementado usando a classe Socket e a classe FTPClient da 
biblioteca dart:io. O desenvolvedor pode criar uma conexão FTP usando um objeto Socket e autenticar-se 
usando a classe FTPClient. O desenvolvedor pode então transferir arquivos usando métodos como 
putFile() ou getFile().
>

## 17.4 SMTP ##

>
O protocolo **SMTP** (**Simple Mail Transfer Protocol**) é um protocolo de rede usado para enviar e-mails entre 
servidores de correio eletrônico. 
>
>
A implementação de um de um cliente **SMTP** é feita usando a biblioteca **dart:io**.
>
>
Para enviar um e-mail usando o protocolo **SMTP** em Dart, o desenvolvedor pode usar a classe 
**SmtpTransport** e a classe **Message**. 
>
O código abaixo é um exemplo de como enviar um e-mail usando o servidor **SMTP** do **Gmail**:
>
>
```
import 'dart:io';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';

main() async {
  // Configura as credenciais SMTP do Gmail
  final smtpServer = gmail('seu-email@gmail.com', 'sua-senha');

  // Cria uma mensagem de e-mail
  final message = Message()
    ..from = Address('seu-email@gmail.com', 'Seu Nome')
    ..recipients.add('destinatario@gmail.com')
    ..subject = 'Assunto do e-mail'
    ..text = 'Corpo do e-mail';

  try {
    // Envia o e-mail usando o servidor SMTP do Gmail
    final sendReport = await send(message, smtpServer);

    // Exibe o resultado do envio do e-mail
    print('E-mail enviado: ${sendReport.sent}');
  } on MailerException catch (e) {
    // Exibe informações sobre erros de envio de e-mail
    print('Erro ao enviar e-mail: ${e.toString()}');
  }
}
```
>
>
Neste exemplo, o código configura as credenciais **SMTP do Gmail** usando a função **gmail()** 
fornecida pela biblioteca **mailer**. 
>
>
Ele cria uma mensagem de e-mail usando a **classe Message** e a preenche com informações 
como o ``endereço de e-mail do remetente`, o `endereço de e-mail do destinatário`, o `assunto` 
e o `corpo do e-mail`. 
>
>
O e-mail é enviado usando o método **send()** da biblioteca **mailer** e em seguida é exibido o 
resultado do envio na saída.
>
>
Observe que a biblioteca **mailer** é necessária para enviar e-mails usando o protocolo 
**SMTP** em Dart. O desenvolvedor pode instalá-la usando o gerenciador de pacotes **pub**.
>
>
Finalizando, o SMTP na linguagem Dart é implementado usando a biblioteca **mailer**, que fornece 
as classes **SmtpTransport** e **Message** para enviar e-mails usando o protocolo **SMTP**. 
O desenvolvedor pode configurar as credenciais **SMTP** para criar uma mensagem de e-mail usando a classe **Message**. 
O desenvolvedor pode então enviar o e-mail usando o método **send()** da classe **SmtpTransport**.
>

