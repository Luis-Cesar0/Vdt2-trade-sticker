*** Settings ***
Documentation      dashboard page

Library            Browser

*** Keywords ***
usurio logado
    ${head_title}     
    ...             Set Variable      
    ...             Aquela figurinha incrível a um clique de distância.
    Get Text        css=.header-content strong    equal    ${head_title}  

buscando usuario
    [Arguments]    ${search_user}
    Fill Text      input[placeholder^=Busque]    ${search_user}
    Click          css=button >> text=Buscar
   

selecionar imagem
    [Arguments]    ${nome}
    Click          xpath=//img[@alt="${nome}"]/..

Entra em contato
    Click          css=button >> text=Entrar em contato

whatsapp Message
    [Arguments]    ${figurinha}
    ${mensagem_esperada}    Set Variable
    ...            Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do Neymar Jr, bora negociar?

    Switch Page    NEW
    Wait For Elements State    
    ...            css=p >> text=${mensagem_esperada}
    ...            visible
    ...            5
    
