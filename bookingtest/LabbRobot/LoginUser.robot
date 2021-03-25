

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a simple test case
    [Documentation]  Login USer
    [tags]  Utförande login user test
    Open Browser  http://rental6.infotiv.net/  chrome
    Input Text  //*[@id="email"]  elias.arezoomande@gmail.com
    Input Text  //*[@id="password"]  B123456?
    Press Keys  //*[@id="login"]  [return]
    Page Should Contain  You are signed in as
    Close Browser