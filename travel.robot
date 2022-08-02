*** Keywords ***
 

Quando eu realizo uma busca de um vôo ida e volta
    Wait Until Element Is Visible  ${a_voos}           10
    Click Element                  ${a_voos}
    Wait Until Element Is Visible  ${Input_IdaeVolta}  10
    Click Element                  ${Input_IdaeVolta}


E saindo de ${Texto}
    Wait Until Element Is Visible  ${Input_Ida}  10
    Input Text                     ${Input_Ida}  ${Texto}
    Press Keys                     ${Input_Ida}  ARROW_DOWN
    Press Keys                     ${Input_Ida}  ENTER 

E indo para ${Texto}


E saindo na data ${Texto}


E voltando na data ${Texto}

E acesso a página de visto
    Wait Until Element Is Visible  ${A_Visto}  10
    Click Element  ${A_Visto}

E informo o pais de origem sendo o ${Texto}
    Wait Until Element Is Visible  ${Span_PaisOrigem}  10
    Click Element                  ${Span_PaisOrigem}
    Wait Until Element Is Visible  ${Input_InformaPaisOrigem}  10
    Input Text                     ${Input_InformaPaisOrigem}  ${Texto}
    Press Keys                     ${Input_InformaPaisOrigem}  ENTER

E fecho o navegador
    Close Browser



*** Test Cases ***
TC01 - Reservando passagem de destinos dentro dos EUA na classe econômica
    Dado que eu acesse o php travels
    E realize o cadastro 
    E faça o Login
    Quando eu realizo uma busca de um vôo ida e volta
    E saindo de Los Angeles EUA
    #E indo para 
    #E saindo na data
    #E voltando na data
    #Quando eu clico em buscar
    #E seleciono o primeiro vôo
    #E preencho os dados do passageiro
    #E preencho os dados de pagamento
    #E clico em confirmar
    #Então a página de confirmação de viagem é exibida
    E fecho o navegador

TC02 - Reservando passagens internacionais na classe econômica
    Dado que eu acesse o php travels
    E realize o cadastro 
    E faça o Login
    Quando eu realizo uma busca de um vôo ida e volta
    E saindo de Salvador    
    #E indo para 
    #E saindo na data
    #E voltando na data
    #Quando eu clico em buscar
    #E seleciono o primeiro vôo
    #E preencho os dados do passageiro
    #E preencho os dados de pagamento
    #E clico em confirmar
    #Então a página de confirmação de viagem é exibida
    E fecho o navegador
    

TC03 - Solicitar visto Americano
    Dado que eu acesse o php travels
    E realize o cadastro 
    E faça o Login
    E acesso a página de visto
    E informo o pais de origem sendo o Brazil
    E fecho o navegador