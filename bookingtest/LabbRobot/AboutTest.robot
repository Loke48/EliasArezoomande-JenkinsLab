
*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a simple test case
    [Documentation]  test av "about" knapp
    [tags]  utförande test for "about" sidan
    Open Browser  http://rental6.infotiv.net/  chrome
    Press Keys  //*[@id="about"]  [Return]
    Page Should Contain  Welcome
    Close Browser
*** Keywords ***