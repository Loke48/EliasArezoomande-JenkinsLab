

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a simple test case
    [Documentation]  Create a user for the site
    [tags]  utförande för Create a user for the site
    Open Browser  http://rental6.infotiv.net/  chrome

    Press Keys  //*[@id="createUser"]  [Return]
    Page Should Contain  Create a new user
    Input Text  //*[@id="name"]  Karl10
    Input Text  //*[@id="last"]  Larsson10
    Input Text  //*[@id="phone"]  0708811112
    Input Text  //*[@id="emailCreate"]  karl10@gmail.com
    Input Text  //*[@id="confirmEmail"]  karl10@gmail.com
    Input Text  //*[@id="passwordCreate"]  B123456?
    Input Text  //*[@id="confirmPassword"]  B123456?
    Press Keys  //*[@id="create"]  [Return]
    Press Keys  //*[@id="logout"]  [return]
    Close Browser