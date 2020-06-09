*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  ${LOGIN_URL}  ff

End Web Test
    Close All Browsers  