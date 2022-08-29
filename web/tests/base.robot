*** Settings ***
Library           SeleniumLibrary    
Test Setup        Nova Sessão
Test Teardown     Encerra Sessão

*** Variables ***
${url}                  https://training-wheels-protocol.herokuapp.com/

*** Keywords ***
Nova Sessão
    Open Browser        ${url}        chrome    options=add_experimental_option('excludeSwitches', ['enable-logging'])
Encerra Sessão    
    Capture Page Screenshot
    Close Browser
