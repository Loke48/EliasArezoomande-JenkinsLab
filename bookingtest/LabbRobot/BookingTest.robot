

*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a simple test case
    [Documentation]  Bookin Test
    [tags]  Login and book a car from selected date


    Open Browser  http://rental6.infotiv.net/  chrome
    Input Text  //*[@id="email"]  elias.arezoomande@gmail.com
    Input Text  //*[@id="password"]  B123456?
    Press Keys  //*[@id="login"]  [return]
    Page Should Contain  You are signed in as
    Press Keys  //*[@id="continue"]  [return]
    Page Should Contain  What would you like to drive?
    Press Keys  //*[@id="bookQ7pass5"]  [return]
    Page Should Contain  Confirm booking of Audi Q7
    Input Text  //*[@id="cardNum"]  1234567891234567
    Input Text  //*[@id="fullName"]  Elias Arezoomande
    Select From List By Index  //*[@id="confirmSelection"]/form/select[1]  4

    Select From List By Index  //*[@id="confirmSelection"]/form/select[2]  4

    Input Text  //*[@id="cvc"]  198
    Press Keys  //*[@id="confirm"]  [return]
    Page Should Contain  A Audi Q7 is now ready for pickup
    Close Browser