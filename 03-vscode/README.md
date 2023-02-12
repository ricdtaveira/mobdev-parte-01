# 3. Instalação da IDE Visual Studio Code #
>
O Visual Studio Code é uma IDE que se integra aos principais SDK´s das linguagens de
programação.
>
>
Desenvolvido pela Microsoft é disponibilizado gratuitamente.  


## 3.1 Instalar o VsCode no Windows ##
>
Seguir os passos definidos abaixo para instalar o VSCode no sistema operacional Windows:
>
>
1. Baixe o instalador do Visual Studio Code na página oficial do software: https://code.visualstudio.com/
>
>
2. Execute o instalador baixado e siga as instruções na tela para instalar o software.
>

## 3.2 Instalar o VsCode o Mac ##
>
Seguir os passos definidos abaixo para instalar o VSCode no sistema operacional Mac:
>

>
1. Baixe o pacote .zip do Visual Studio Code na página oficial do software: https://code.visualstudio.com/
Descompacte o arquivo .zip baixado
>
>
2. Arraste o aplicativo Visual Studio Code para a pasta Aplicativos do seu Mac
Clique duas vezes no aplicativo para iniciá-lo.
>

## 3.2 Instalar o VsCode no Linux ##

>
Seguir os passos definidos abaixo para instalar o VSCode no sistema operacional Linux:
>
>
1. Abra o terminal e digite o seguinte comando para adicionar o repositório do Visual Studio Code ao seu sistema:
>>
```
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

```
>>
>
2. Atualize sua lista de pacotes com o seguinte comando:
>>
```
sudo apt-get update
```
>>> 
>

>
3. Instale o Visual Studio Code com o seguinte comando:
>>
```
sudo apt-get install code
```
>>
>



