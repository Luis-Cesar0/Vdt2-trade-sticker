*** Settings ***
Documentation            Buscando usuario do trade sticker

Resource                 ../resources/main.resource

Test Setup        Start test
Test Teardown     Finish test

*** Test Cases ***
Buscando a figurinha do Neymar Legend

    Fazer loguin

    buscando usuario     Legend
    selecionar imagem    Neymar Jr
    Entra em contato
    whatsapp Message     Neymar Jr
  