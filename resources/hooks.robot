*** Settings ***
Resource     base.robot
 
*** Variables ***
 

*** Keywords ***
Inserir texto
    [Arguments]     ${element}      ${texto}
    Wait Until Element Is Visible     ${element}
    Input Text      ${element}      ${texto}

Clicar no botao
    [Arguments]     ${element}
    Wait Until Element Is Visible     ${element}
    Click Element   ${element}

Clicar no elemento
    [Arguments]     ${element}
    Wait Until Element Is Visible     ${element}
    Click Element   ${element}

Clicar no texto
    [Arguments]     ${element}
    Wait Until Element Is Visible     ${element}
    Click Text      ${element}
 
Visualizar a mensagem
    [Arguments]     ${mensagem}
    Wait Until Page Contains     ${mensagem}
    Page Should Contain Text     ${mensagem}

Clicar no botão HOME              # Botão do device
    Press Keycode       3

Clicar no botão VOLTAR            # Botão do device
    Press Keycode       4

Clicar no botão ENTER            # Botão do device
    Press Keycode       66
 
Swipe para baixo
    swipe by percent              50    50    50    10       2000


  