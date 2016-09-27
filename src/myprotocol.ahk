; http://ahkscript.org/

if 0 != 1 ;Check %0% to see how many parameters were passed in
{
  msgbox ERRO: Aplicativo chamado com %0% parametros. Deve ser passado exatamente 1 parametro.
}
else
{
  param = %1%  ;Fetch the contents of the command line argument
  url := "myprotocol://" ; This should be the URL Protocol that you registered in the Windows Registry

  IfInString, param, %url%
  {
    arglen := StrLen(param) ;Length of entire argument
    applen := StrLen(url) ;Length of appurl
    len := arglen - applen ;Length of argument less url
    StringRight, param, param, len ; Remove url portion from the beginning of parameter
  }

  Run "chrome" %param% ;
}
