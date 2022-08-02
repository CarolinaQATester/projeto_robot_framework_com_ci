*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***

Abrir navegador e acessar site itera-qa.azurewebsites.net

    Open Browser  https://itera-qa.azurewebsites.net/home/automation  chrome
    Maximize Browser Window

Abrir navegador e acessar site automacaocombatista

    Open Browser  https://automacaocombatista.herokuapp.com/  chrome
    Maximize Browser Window

Fechar navegador

    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário itera-qa.azurewebsites.net
    [Tags]  regressivo
    Abrir navegador e acessar site itera-qa.azurewebsites.net
    Fechar navegador

Cenário 2: Preencher formulário automacaocombatista

    Abrir navegador e acessar site automacaocombatista
    Fechar navegador

 