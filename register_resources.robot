*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}          https://demo.automationtesting.in/Register.html


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

# ----------------------------------

Dado que estou em Automation Demo Site >> Register
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=//h2[contains(.,'Register')]

Quando preencho o campo obrigatório “Full Name” sendo “${NOME}”
    Sleep    2
    Click Element    locator=//input[@ng-model='FirstName']
    Sleep    2
    Input Text    locator=//input[@ng-model='FirstName']    text=${NOME}

E preencho o campo “Full Name” sendo o “${SOBRENOME}”
    Sleep    2
    Click Element    locator=//input[@ng-model='LastName']
    Sleep    2
    Input Text    locator=//input[@ng-model='LastName']    text=${SOBRENOME}

E preencho o campo “Address” sendo "${ENDEREÇO}"
    Sleep    2
    Click Element    locator=//textarea[@ng-model='Adress']
    Sleep    2
    Input Text    locator=//textarea[@ng-model='Adress']    text=${ENDEREÇO}

E preencho o campo obrigatório “Email address” sendo "${EMAIL}"
    Sleep    2
    Click Element    locator=//input[@ng-model='EmailAdress']
    Sleep    2
    Input Text    locator=//input[@ng-model='EmailAdress']    text=${EMAIL}

E preencho o campo obrigatório “Phone” sendo "${NUMERO}"
    Sleep    2
    Click Element    locator=//input[@ng-model='Phone']
    Sleep    2
    Input Text    locator=//input[@ng-model='Phone']    text=${NUMERO}

E seleciono o campo obrigatório “Gender” sendo “FeMale”
    Sleep    2
    Click Element    locator=//input[@value='FeMale']

E seleciono o campo “Hobbies” sendo “Movies”
    Sleep    2
    Click Element    locator=//input[contains(@value,'Movies')]

E seleciono o campo “Languages” sendo “inglês”
    Sleep    2
    Click Element    locator=//div[@class='ui-autocomplete-multiselect ui-state-default ui-widget']
    Sleep    2
    Click Element    locator=//a[@class='ui-corner-all'][contains(.,'English')]
    Click Element    locator=//div[contains(@class,'row ')]
    Sleep    2

E seleciono o campo “Skills” sendo “Adobe InDesign”
    Sleep    2
    Click Element    locator=//select[contains(@ng-model,'Skill')]
    Sleep    2
    Click Element    locator=//option[@value='Adobe InDesign'][contains(.,'Adobe InDesign')]

E seleciono o campo obrigatório “Country” sendo “Brasil”
#ERRO
    Sleep    2
    Click Element    locator=//select[@ng-model='country']
    Sleep    2
    # Click Element    locator=

E seleciono o campo “Select Country” sendo “Japan”
    Sleep    2
    Click Element    locator=//span[@class='select2-selection select2-selection--single']
    Sleep    2
    Click Element    locator=//option[@value='Japan']

E seleciono o campo “Date Of Birth” sendo “1995”, “Februry”, "12"
    Sleep    2
    Click Element    locator=//select[@placeholder='Year']
    Click Element    locator=//option[@value='1995'][contains(.,'1995')]
    Sleep    2
    Click Element    locator=//select[@placeholder='Month']
    Click Element    locator=//option[contains(@value,'February')]
    # Sleep    2
    Click Element    locator=//select[@placeholder='Day']
    Click Element    locator=//option[@value='12'][contains(.,'12')]

E preencho o campo “Password” sendo "${SENHA}"
    Sleep    2
    Click Element    locator=//input[@ng-model='Password']
    Input Text    locator=//input[@ng-model='Password']    text=${SENHA}

E preencho o campo “Confirm Password” sendo "${SENHA}"
    Sleep    2
    Click Element    locator=//input[@ng-model='CPassword']
    Input Text    locator=//input[@ng-model='CPassword']   text=${SENHA}

Então seleciono o botão “Submit” para salvar o novo Registro
    Sleep    2
    Click Element    locator=//button[@value='sign up']
