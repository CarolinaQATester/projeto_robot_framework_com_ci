*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${input_name}         //input[@type="text"][@id="name"]
${input_phone}        //input[@type="text"][@id="phone"]
${input_email}        //input[@placeholder="Enter your name"]
${input_password}     //input[@type="password"][@id="password"]
${textarea_address}   //textarea[@class="form-control"][@id="address"]
${btn_submit}         //button[@class="btn btn-primary"][@name="submit"]


*** Keywords ***

Abrir navegador e acessar site

    Open Browser  https://itera-qa.azurewebsites.net/home/automation  chrome
    Maximize Browser Window

Preencher campos

    Input text        ${input_name}       Carolina
    Input text        ${input_phone}      982028127
    Input text        ${input_email}      texte@texto.com
    Input PassWord    ${input_password}   123456
    Input text        ${textarea_address}  teste
    
Clicar em submit

    Click Element     ${btn_submit}

Fechar navegador

    Close Browser


*** Test Cases ***
Cenário 1: Preencher formulário

    Abrir navegador e acessar site
    Preencher campos
    Clicar em submit
    Fechar navegador
 