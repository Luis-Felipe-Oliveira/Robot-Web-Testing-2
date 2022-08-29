*** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=      welcome     Luis Felipe
    Should be Equal  ${result}  OLá Luis Felipe, bem vindo ao Curso Básico de Robot Framework
