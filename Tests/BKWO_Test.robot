*** Settings ***
Variables  ../Resources/variables.py
Resource  ../Resources/CommonWebApp.robot
Test Setup  Run Keywords  Begin Web Test  Login to Service
Test Teardown  End Web Test

*** Variables ***
# robot -d Results .\Tests\BKWO_Test.robot

*** Keywords ***
Login to Service
    Input Text  css=${LOGIN_FIELD}  ${USER}
    Input Password  css=${PASS_FIELD}  ${PASS}
    Click Element  css=${SUBMIT}  modifier=False

*** Test Cases ***
Should Open Fysiikka
    Click Element  css=${FYSIIKKA}
    Element Should Contain  css=${FYSIIKKA_TITLE}  Fysiikka
