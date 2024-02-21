*** Settings ***
Resource 	../resources/base.robot

*** Variables ***
${DEVICE_APP_GMAIL}		                  xpath=//android.widget.TextView[@content-desc="Gmail"]  
${DEVICE_APP_b_TABLET}                  xpath=//android.widget.TextView[@content-desc="b"]
${DEVICE_APP_b_CELULAR}                 xpath=//android.widget.ImageView[@content-desc="b"]
${DEVICE_APP_MENSAGEMS_SMS}               xpath=//android.widget.ImageView[@content-desc="Mensagens"]
${POPUP_BTN_FECHAR} 	                  id=br.com.teste:id/imageViewBottomSheetPermissionsAppClose
${ABRIR_CONTA_BTN}                        id=br.com.teste:id/button_fragment_logar_abra_sua_conta
${cadastro_INPUT_CPF_CNPJ}                id=br.com.teste:id/cpf_value_edittext
${BOTAO_CONTINUAR}                        id=br.com.teste:id/continuar_button
${INPUT_EMAIL}                            id=br.com.teste:id/email_value_edittext
# TELA DE INSERIR CODIGO E-MAIL
${LBL_DIGITO_COD_1}                       id=br.com.teste:id/digito_1
${LBL_DIGITO_COD_2}                       id=br.com.teste:id/digito_2
${LBL_DIGITO_COD_3}                       id=br.com.teste:id/digito_3
${LBL_DIGITO_COD_4}                       id=br.com.teste:id/digito_4
${LBL_DIGITO_COD_5}                       id=br.com.teste:id/digito_5
${LBL_DIGITO_COD_6}                       id=br.com.teste:id/digito_6
${TOKEN_BTN_CODIGO_EMAIL}                 xpath=//android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.widget.TextView[6]
${TOKEN_BTN_BOTAO_CONTINUAR}              id=br.com.teste:id/buttonLoginEmailTokenContinue
${LOGIN_INPUT_INSERIR_NUMERO}             id=br.com.teste:id/celular_value_edittext
${LOGIN_MARCAR_TERMO_PRIVACIDADE}         id=br.com.teste:id/check_politica_privacidade_check
${LOGIN_BTN_CONTINUAR_SMS}                id=br.com.teste:id/continuar_button
${EMAIL_BTN_DELETE}                       id=com.google.android.gm:id/delete
${EMAIL_CAMPO_BUSCA}                      id=com.google.android.gm:id/open_search
${EMAIL_TXT_VIEW}                         id=com.google.android.gm:id/open_search_bar_text_view
${EMAIL_INPUT_BUSCA}                      id=com.google.android.gm:id/open_search_view_edit_text     
${EMAIL_RECEBIDO}                         id=com.google.android.gm:id/senders
${APP_SMS_BTN_ALTERAR_CELULAR}            id=br.com.teste:id/buttonLoginPhoneTokenChangePhone
${APP_SMS_BTN_REENVIAR_COD}               id=br.com.teste:id/buttonLoginPhoneTokenResendToken
${APP_SMS_BTN_CONTINUAR}                  id=br.com.teste:id/buttonLoginPhoneTokenContinue
${DUDA_IMG_DUDA}                          id=br.com.teste:id/image_duda
${DUDA_TXT_BOAS_VINDAS}                   text= Oi, eu sou a Duda, especialista virtual do Banco b. Vamos abrir a sua conta agora?
${DUDA_BTN_INICIAR_CADASTRO}              id=br.com.teste:id/btn_quick_reply
${IDENTIF_INPUT_CELULAR}                  id=br.com.teste:id/celular_value_edittext
${IDENTIF_CHECK_TERMO_ACEITE}             id=br.com.teste:id/check_politica_privacidade_check
${SMS_MENSAGEM_COM_CODIGO}                id=//android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView[3]
  
