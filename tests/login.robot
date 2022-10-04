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
    

Nao deve logar com a email incorreta
    Pagina principal
    loguin           abcd@gmail.com    vaibrasil
    loguin errado    Credenciais inválidas, tente novamente!
    

Nao deve logar sem a senha
    Pagina principal
    Senha vazia
    loguin errado    Por favor, informe a sua senha secreta!
    
Nao dve logar sem o email
    Pagina principal
    Email vazia
    loguin errado    Por favor, informe o seu email!
    

Nao deve logar sem as credenciais
    Pagina principal
    Click             css=button >> text=Entrar
    loguin errado     Por favor, informe suas credenciais!
    
    
   
