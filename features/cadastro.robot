*** Settings ***
Resource    ../resources/base.robot

Test Setup        Open App
Test Teardown     Fechar App 

*** Variables ***
 

*** Test Cases ***
CT01 - Validar pre-cadastro informando o código enviado para o e-mail
    [Documentation]    --------
    ...           
    [Tags]     CT-001      eduardo.azevedo   
    Dado que estou na tela de cadastro
    Quando informo o e-mail para o pre-cadastro da conta
    Então recebo o código de validação recebido por e-mail
    E insiro o código no aplicativo do banco  
    Então vejo a tela para informar o código SMS 

CT01 - Validar pre-cadastro informando o código enviado por SMS
    [Documentation]   --------
    ...            
    [Tags]     CT-002      eduardo.azevedo   
    Dado que estou na tela para informar o código SMS
    Quando informo o numero do celular
    Então recebo o código de validação recebido por SMS
    Quando insiro o código no aplicativo do banco  
    Então vejo a tela para cadastro do SMS

 
