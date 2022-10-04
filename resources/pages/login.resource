*** Settings ***
Documentation    login page

Library    Browser

*** Keywords ***
Pagina principal
    New Page        https://trade-sticker-dev.vercel.app/

loguin
    [Arguments]    ${email}    ${senha}
    Fill Text       css=input[name=email]        ${email}    
    Fill Text       css=input[name=password]     ${senha}
    Click           css=button >> text=Entrar

loguin errado
    [Arguments]    ${mensagem_esperada}
    ${localizar}    
    ...            Set Variable    
    ...            css=.Toastify__toast-body div >> text=${mensagem_esperada}
    
    Wait For Elements State    ${localizar}    visible    3
    #Thinking time
    Sleep    1

Email vazia
    Fill Text    css=input[name=password]       vaibrasil
    Click    css=button >> text=Entrar

Senha vazia
    Fill Text   css=input[name=email]        papito@gmail.com 
    Click    css=button >> text=Entrar