# Custom Windows Protocol Handler to Open URL in Google Chrome Browser

O arquivo `myprotocol.ahk`, localizado na pasta `src`, é um script  **AutoHotkey**.
Ele pode ser editado em qualquer editor de textos.
Para ser executado, é necessária a instalação do software AutoHotkey, que pode ser obtido em [https://autohotkey.com](https://autohotkey.com)

Uma vez instalado, o AutoHotkeys disponibiliza uma ferramenta gráfica que permite a compilação de scripts **.ash** em arquivos executáveis **.exe**.
Também é possível efetuar a compilação através do utilitário de linha de comando.

```
Ahk2Exe.exe /in myprotocol.ahk /out myprotocol.exe /icon myprotocol.ico
```


### Registro do protocol handler no sistema operacional do cliente

Edite a última linha do arquivo `myprotocol.reg` para adequar o caminho do arquivo de acordo com o local para onde foi copiado o execuavel.
Obs: É necessário preceder o caracter barra invertida `\` por uma barra invertida adicional `\\`.

```
Ex: @="\"C:\\myprotocol\\myprotocol.exe\" \"%1\""
```

Execute o arquivo `myprotocol.reg` para registrar o protocol handler no registro do Windows.

### Testando o funcionamento

Abra o arquivo `myprotocol.html`, localizado na pasta `sample` utilizando o navegador `Microsoft Internet Explorer`.

Clique no link `A resposta para a vida, o universo e tudo mais`.

Se o protocol handler tiver sido registrado corretamente, deve ser exibido um alerta perguntando se o usuário tem certeza de que deseja prosseguir com a operação.
Desmarque a opção de sempre realizar esta pergunta e permita a execução.

Uma página de resultado de busca do Google será aberta em uma aba do navegador `Google Chrome`.

** IMPORTANTE: Para funcionar, o [Google Chrome](https://www.google.com/chrome/browser/desktop/index.html) deve estar instalado. **


##### Para saber mais

* http://www.autohotkey.com/forum/viewtopic.php?p=477917
* http://www.autohotkey.com/forum/viewtopic.php?t=76997
* http://msdn.microsoft.com/en-us/library/aa767914(v=vs.85).aspx
* https://autohotkey.com/board/topic/71831-application-url-launch-local-application-from-browser/
* http://stackoverflow.com/questions/23208646/how-do-i-create-a-standalone-exe-with-autohotkey

#### [MIT LICENSE](LICENSE.md)
