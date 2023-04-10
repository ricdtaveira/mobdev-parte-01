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
(protocolos da camada de transporte), ou permitindo que os desenvolvedores implementem protocolos 
de rede personalizados ou utilizem protocolos da camada de aplicação existentes, como **HTTP**, 
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


>


