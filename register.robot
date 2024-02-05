*** Settings ***
Documentation       Essa suite testa o site da https://demo.automationtesting.in/Register.html para criar um novo registro

Resource            register_resources.robot

Test Setup          Abrir o navegador
Test Teardown       Fechar o navegador


*** Test Cases ***
Caso de Teste Novo Registro
    [Documentation]    Realizando teste para preencher formulário e realizar um novo registro
    [Tags]    teste_qa

    Dado que estou em Automation Demo Site >> Register
    Quando preencho o campo obrigatório “Full Name” sendo “Érika”
    E preencho o campo “Full Name” sendo o “Santana”
    E preencho o campo “Address” sendo "Rua Jader Dias , n 235"
    E preencho o campo obrigatório “Email address” sendo "teste123456@gmai.com"
    E preencho o campo obrigatório “Phone” sendo "(91) 983551401"
    E seleciono o campo obrigatório “Gender” sendo “FeMale”
    E seleciono o campo “Hobbies” sendo “Movies”
    E seleciono o campo “Languages” sendo “inglês”
    E seleciono o campo “Skills” sendo “Adobe InDesign”
    # E seleciono o campo obrigatório “Country” sendo “Brasil” (ERRO)
    E seleciono o campo “Select Country” sendo “Japan”
    E seleciono o campo “Date Of Birth” sendo “1995”, “Februry”, "12"
    E preencho o campo “Password” sendo "123456789"
    E preencho o campo “Confirm Password” sendo "123456789"
    Então seleciono o botão “Submit” para salvar o novo Registro
