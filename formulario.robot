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



 