*** Settings ***
Documentation      login tests

Resource           ../resources/main.resource

Test Setup         Start test
Test Teardown      Finish test


*** Test Cases ***
deve logar com sucesso
    Pagina principal
    loguin           papito@gmail.com    vaibrasil
    usurio logado
   
Nao deve logar com a senha incorreta
    Pagina principal
    loguin           papito@gmail.com    abcd123
    loguin errado    Credenciais inválidas, tente novamente!
    #Thinking time
    Sleep            1

Nao deve logar com a email incorreta
    Pagina principal
    loguin           abcd@gmail.com    vaibrasil
    loguin errado    Credenciais inválidas, tente novamente!
    Sleep            1
Nao deve logar sem as credenciais
    Pagina principal
    Click             css=button >> text=Entrar
    loguin errado     Por favor, informe suas credenciais!
    Sleep             1
    
   
