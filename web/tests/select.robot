*** Settings ***
Resource          base.robot
Test Setup        Nova Sessão
Test Teardown     Encerra Sessão


*** Test Cases ***
Selecionar por texto
    Go To                        ${url}/dropdown
    Select From List By Label    class:avenger-list            Scott Lang
    ${selected}                  Get Selected List Value       class:avenger-list
    Should Be Equal              ${selected}                   7                
    Log To Console               ${selected}

Selecionar pelo valor
    Go To                        ${url}/dropdown
    Select From List By Value    id:dropdown                  6
    ${selected}                  Get Selected List Label     id:dropdown
    Should Be Equal              ${selected}                  Loki   
    Log To Console               ${selected}         