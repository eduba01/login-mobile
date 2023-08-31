*** Settings ***
Resource     base.robot
Library    yaml

*** Variables ***
${APP}                         ${CURDIR}/../apk/Bmg.apk
${TIMEOUT}                     30
${PLATFORM_VERSION}            %{PLATFORM_VERSION=13.0}
 
*** Keywords ***
Open App
    open application        http://127.0.0.1:4723/wd/hub
	...                     platformName=android
	...                     automationName=UIAutomator2
	...                     app=${APP} 
	...                     platformVersion=${PLATFORM_VERSION} 
    ...                     appActivity=br.com.bancobmg.bancodigital.core.activities.SplashActivity
	...                     appWaitPackage=br.com.bancobmg.bancodigital
	...                     appPackage=br.com.bancobmg.bancodigital
	...                     enableMultiWindows=${true}
	...                     disableWindowAnimation=${true}
	...                     autoGrantPermissions=${true}

	Set Appium Timeout     ${TIMEOUT}

                ${cpf}         275.682.798-39        
                ${e-mail}      eduardobnh@gmail.com

Fechar App
	Capture Page Screenshot
	Close Application