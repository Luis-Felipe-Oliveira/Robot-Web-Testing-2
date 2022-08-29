*** Settings ***
Resource    base.robot

Test Setup        Nova Sessão
Test Teardown     Encerra Sessão

*** Variables ***
${url}                  https://training-wheels-protocol.herokuapp.com/
${check_thor}           id:thor
${check_iron}           //input[contains(@value,'iron-man')]
${check_panther}        //*[@id='checkboxes']/input[7]


*** Test Cases ***
Marcando a opção com id
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_thor}
    Checkbox Should Be Selected         ${check_thor}
         

Marcando a opção com CSS Selector
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_iron}
    Checkbox Should Be Selected         ${check_iron}
    

Marcando a opção com Xpath    
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_panther}
    Checkbox Should Be Selected         ${check_panther}
      


