*** Settings ***
Library         SeleniumLibrary

***Variables***
#Dados do teste
${nomeDaMusica}    Vem cá

#variaveis de configuração
${URL}            https://www.youtube.com/
${BROWSER}        chrome

#Locators
${input_pesquisar}   //input[@id="search"]
${btn_pesquisar}     //button[@id="search-icon-legacy"]
${primeiro_video}    (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${validar_texto}     //yt-formatted-string[contains(text(), "Pelé Milflows - Vem Cá ")]


***Keywords***
Dado que eu acesso o site do youtube

    Open Browser                ${URL}  ${BROWSER}
    Maximize Browser Window

Quando digito o nome da musica

    Input text            ${input_pesquisar}    ${nomeDaMusica}

E clico botao buscar

    Click Element                   ${btn_pesquisar}

E clico na primeira opcao da lista

     Wait Until Element Is Visible   ${primeiro_video}  10
    Click Element                    ${primeiro_video} 

Entao o video é executado 

    Wait Until Element Is Visible   ${validar_texto}  10
    Element Should Be Visible       ${validar_texto}  
    Sleep   1s
    Close Browser

***Test Cases***
Cenário 1: Executar video no site youtube

    Dado que eu acesso o site do youtube
    Quando digito o nome da musica
    E clico botao buscar
    E clico na primeira opcao da lista
    Entao o video é executado
        