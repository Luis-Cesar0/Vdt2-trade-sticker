*** Settings ***
Documentation    Arquivo principal do programa

Library    Browser

Resource    pages/dash.resource
Resource    pages/login.resource

*** Keywords ***
Fazer loguin
    Pagina principal
    loguin               papito@gmail.com    vaibrasil
    usurio logado

Start test
    #$ robot -d ./logs -v BROWSER:firefox tests/
    #chromium firefox webkit
     New Browser     headless=False    browser=${BROWSER}

Finish test
    Take Screenshot