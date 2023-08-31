*** Settings ***
Resource    ../resources/base.robot

Test Setup        Open App
Test Teardown     Fechar App 

*** Variables ***
 

*** Test Cases ***
CT01 - Validar pre-cadastro informando o código enviado para o e-mail
    [Documentation]   POC - Banco BMB  --------
    ...            <<<   Y A M A N  >>>      
    [Tags]     CT-001      eduardo.azevedo     1
    Dado que estou na tela de cadastro do Meu BMG
    Quando informo o e-mail para o pre-cadastro da conta
    Então recebo o código de validação recebido por e-mail
    E insiro o código no aplicativo do banco  
    Então vejo a tela para informar o código SMS 

CT01 - Validar pre-cadastro informando o código enviado por SMS
    [Documentation]   POC - Banco BMB  --------
    ...            <<<   Y A M A N  >>>      1
    [Tags]     CT-002      eduardo.azevedo     2
    Dado que estou na tela para informar o código SMS
    Quando informo o numero do celular
    Então recebo o código de validação recebido por SMS
    Quando insiro o código no aplicativo do banco  
    Então vejo a tela para cadastro do SMS

 