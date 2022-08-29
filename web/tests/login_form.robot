*** Settings ***
Resource          base.robot
Test Setup        Nova Sessão
Test Teardown     Encerra Sessão

*** Test Cases ***
Login com sucesso
    Go To    ${url}/login
    Login With    stark   jarvis!
    Should See Logged username    Tony Stark   

Longin com senha invalida
    [Tags]    login_error
    Go To    ${url}/login
    Login With    stark    jarvis
    Should Contain Login Alert    Senha é invalida!
        
Login com o usuario invalido
    [Tags]    login_uder404
    Go To    ${url}/login
    Login With    stark1    jarvis!
    Should Contain Login Alert    O usuário informado não está cadastrado!

*** Keywords ***
Login With
    [Arguments]    ${uname}    ${pass}
    Input Text        css:input[name="username"]    ${uname} 
    Input Text        css:input[name="password"]    ${pass}
    Click Element     //i[contains(.,'Login')]

Should Contain Login Alert
    [Arguments]       ${expect_message}

    ${message}=       Get WebElement     id:flash
    Should Contain    ${message.text}    ${expect_message}    

Should See Logged username    
    [Arguments]    ${full_name}

    Page Should Contain    Olá, ${full_name}. Você acessou a área logada! 

    