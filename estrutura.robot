** Settings **
Library  SeleniumLibrary

** Variables **
${URL}               https://robotframework.org/  
${Browser}           chrome

** Keywords **
Abrir navegador e acessar site
    Open Browser  ${URL}    ${Browser}    


Fechar navegador   
    Close Browser

** Test Cases **
CT001: Acessando o site do Robot
    Abrir navegador e acessar site
    Fechar navegador
