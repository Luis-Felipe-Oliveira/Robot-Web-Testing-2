*** Settings ***
Resource    base.robot

Test Setup        Nova Sessão
Test Teardown     Encerra Sessão

*** Test Cases ***    
Verifica o valor ao informar uma linha
    Go To                       ${url}/tables
    Table Row Should Contain    id:actors   1    10.000.000    

Descobre a linha pelo texto chave e valida os demais valores
    Go To    ${url}/tables
    ${target}=    Get WebElement               xpath:.//tr[contains(., '@robertdowneyjr')]
    Should Contain    ${target.text}    10.000.000
    Should Contain    ${target.text}    robertdowneyjr
