*** Settings ***
Resource        ../resources/base.robot
 
*** Variables ***
 
 
*** Keywords ***
 
Dado que estou na tela de cadastro
    Abrir a tela de cadastro        
 
Quando informo o e-mail para o pre-cadastro da conta
    Iniciar cadastro    275.682.798-39        eduardobnh@gmail.com

Então recebo o código de validação recebido por e-mail
    Recuperar codigo do e-mail

E insiro o código no aplicativo do banco    
    Converter o código em lista

Então vejo a tela para informar o código SMS
    Page Should Contain Element    ${IDENTIF_INPUT_CELULAR}


 
 
