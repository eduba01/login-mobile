*** Settings ***
Library     BuiltIn
Library     String
Library     AppiumLibrary
Library     Screenshot
Library     OperatingSystem
Library     DateTime
Library     Collections
Library     Process
Library     yaml
Resource     ../steps/cadastro.robot
Resource     ../pages/cadastro.robot
Resource     ../resources/config.robot
Resource     ../resources/hooks.robot
#Variables    ../resources/dados/variaveis.yaml


*** Variables ***



*** Keywords ***
 
Abrir a tela de cadastro
    Clicar no botao         ${POPUP_BTN_FECHAR}
	Clicar no botao         ${ABRIR_CONTA_BTN} 
 
Iniciar cadastro
    [Arguments]             ${cpf}     ${email}
    Inserir texto           ${cadastro_INPUT_CPF_CNPJ}        ${cpf}   
	Clicar no botao         ${BOTAO_CONTINUAR} 
    Inserir texto           ${INPUT_EMAIL}                    ${email} 
	Clicar no botao         ${BOTAO_CONTINUAR} 
    Clicar no botão HOME

Recuperar codigo do e-mail
    # ABRIR O GMAIL
    Clicar no elemento            ${DEVICE_APP_GMAIL} 
    # Verificar e excluir o codigo anterior
    ${STATUS}     ${condition}=     Run Keyword And Ignore Error     Wait Until Page Contains Element     ${EMAIL_BTN_DELETE}        timeout=3    error=false
    Log To Console    ${\n} Status ${STATUS} ${\n}
    Run Keyword If     '${STATUS}' == 'PASS'
    ...         Excluir e-mail    
    ...     ELSE IF           '${STATUS}' == 'FAIL'
    ...         Buscar o codigo no e-mail
 
Excluir e-mail
    Clicar no elemento       ${EMAIL_BTN_DELETE}    # Excluir o e-mail
    Sleep  5
    Clicar no botão VOLTAR
    Buscar o codigo no e-mail

Buscar o codigo no e-mail
    Clicar no elemento            ${EMAIL_CAMPO_BUSCA} 
    Clicar no elemento            ${EMAIL_TXT_VIEW} 
    Inserir texto                 ${EMAIL_INPUT_BUSCA}       Banco b, abertura de conta
    Clicar no botão ENTER
    Click Element                 ${EMAIL_RECEBIDO}
    Pegar o codigo
  
Pegar o codigo
    Wait Until Element Is Visible     ${TOKEN_BTN_CODIGO_EMAIL}
    Swipe para baixo
    ${CODIGO_EMAIL}=    Get Text      ${TOKEN_BTN_CODIGO_EMAIL} 
    Set Global Variable    ${CODIGO_EMAIL}

    Clicar no elemento       ${EMAIL_BTN_DELETE}         # Excluir o e-mail
    Clicar no botão HOME
    Clicar no botão VOLTAR

Converter o código em lista
    ${CODIGOS_LISTA}   Evaluate    list("${CODIGO_EMAIL}")    # Converte string em lista
 
    ${COD_1}=        Set Variable        ${CODIGOS_LISTA[0]}
    ${COD_2}=        Set Variable        ${CODIGOS_LISTA[1]}    
    ${COD_3}=        Set Variable        ${CODIGOS_LISTA[2]}
    ${COD_4}=        Set Variable        ${CODIGOS_LISTA[3]}
    ${COD_5}=        Set Variable        ${CODIGOS_LISTA[4]}
    ${COD_6}=        Set Variable        ${CODIGOS_LISTA[5]}
 
    Clicar no botão HOME

    Clicar no elemento    ${DEVICE_APP_b_TABLET}    # REABRIR O APP DO BANCO
    Inserir o código    ${COD_1}    ${COD_2}    ${COD_3}    ${COD_4}    ${COD_5}    ${COD_6}
    Log To Console   codigo: ${CODIGOS_LISTA}

Inserir o código
    [Arguments]       ${COD_1}    ${COD_2}    ${COD_3}    ${COD_4}    ${COD_5}    ${COD_6}
    Inserir texto     ${LBL_DIGITO_COD_1}       ${COD_1}
    Inserir texto     ${LBL_DIGITO_COD_2}       ${COD_2}         
    Inserir texto     ${LBL_DIGITO_COD_3}       ${COD_3}         
    Inserir texto     ${LBL_DIGITO_COD_4}       ${COD_4}         
    Inserir texto     ${LBL_DIGITO_COD_5}       ${COD_5}          
    Inserir texto     ${LBL_DIGITO_COD_6}       ${COD_6}      
    Clicar no botao   ${TOKEN_BTN_BOTAO_CONTINUAR} 
 
    Sleep   40


########   S M S   ###############
 
Informar codigo sms
    # INFORMAR O CELULAR PARA CADASTRO
    Inserir texto         ${IDENTIF_INPUT_CELULAR}    11997512323
    Clicar no elemento    ${IDENTIF_CHECK_TERMO_ACEITE}
    Clicar no botao       ${BOTAO_CONTINUAR}

    # PEGAR O CÓDIGO SMS
    Cliar no botão     HOME
    Clicar no botao              ${DEVICE_APP_MENSAGEMS_SMS}       # APLICATIVO DE MENSAGEMS DO CELULAR
    pegar o texto do elemento    ${SMS_MENSAGEM_COM_CODIGO}        # MENSAGEM CONTENDO O CÓDIGO
    # tratar e Pegar o código e armazenar em variavel lista
    Cliar no botão     HOME

 
    # INSERIR O CÓDIGO SMS
    Inserir texto    ${LBL_DIGITO_COD_1}    $texto
    Inserir texto    ${LBL_DIGITO_COD_6}    $texto

    Clicar no botao    ${APP_SMS_BTN_CONTINUAR}        # FIM   # CONTINUAR PARA O CADASTRO
