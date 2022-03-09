*** Settings ***
Library    SeleniumLibrary

*** Variables ***

@{InputBar and search button} =     id=twotabsearchtextbox    xpath=//*[@id="nav-search"]/form/div[2]/div/input
*** Keywords ***
User enter product name in search bar
    input text    ${InputBar and search button}[0]  ${SEARCH_TEXT}
User enter the click button
    element should be focused    ${InputBar and search button}[1]
    #click button    ${InputBar and search button}[1]
    press keys    ${InputBar and search button}[1]  \ue007
    #sleep    25sec
    wait until page contains    results for "${SEARCH_TEXT}"
    #press keys    ${InputBar and search button}[1]  \ue007


