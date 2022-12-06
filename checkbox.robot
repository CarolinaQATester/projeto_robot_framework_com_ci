*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${URL}             https://itera-qa.azurewebsites.net/home/automation 
${Browser}         chrome

${input_Name}                      id:name
${input_Mobile_number}             id:phone
${input_Email_address}             id:email
${input_Password}                  id:password
${textarea_Address}                id:address
${btn_Submit}                      name:submit


*** Keywords ***

Abrir navegador e acessar site itera-qa.azurewebsites.net

    Open Browser     ${URL}          ${Browser}
    Maximize Browser Window
    Delete All Cookies
    Set Selenium Speed  1seconds

Preencher campos de Textarea practice
    Input Text           ${input_Name}                   teste robot
    Input Text           ${input_Mobile_number}          12345678
    Input Text           ${input_Email_address}          test@teste.com
    Input Text           ${input_Password}               pw123456              
    Input Text           ${textarea_Address}             teste teste teste
    
Preencher campos de Radio Button practice
    page should contain radio button                 name:optionsRadios
    page should not contain radio button             name:optionsRadios123'
    radio button should not be selected              optionsRadios
    select radio button    optionsRadios             FeMale
    select radio button    optionsRadios              Male
    radio button should be set to    optionsRadios    FeMale

Preencher campos de CheckBox practice
            
Clicar no botao submit
    Click Element        ${btn_Submit}  


Fechar navegador

    Close Browser

*** Test Cases ***
CT001: Preencher formulário itera-qa.azurewebsites.net
    
    Abrir navegador e acessar site itera-qa.azurewebsites.net
    Preencher campos de Textarea practice
    Clicar no botao submit
    Fechar navegador

CT002: Preencher campos de Radio Button practice
    Abrir navegador e acessar site itera-qa.azurewebsites.net
    Preencher campos de Textarea practice
    Clicar no botao submit
    Preencher campos de Radio Button practice
    Fechar navegador

CT003: Preencher campos de CheckBox practice
    Abrir navegador e acessar site itera-qa.azurewebsites.net
    Preencher campos de Textarea practice
    Clicar no botao submit
    Preencher campos de Radio Button practice
    Preencher campos de CheckBox practice
    Fechar navegador

 