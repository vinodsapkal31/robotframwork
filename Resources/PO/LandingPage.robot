*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
User Enter the website
    GO TO    ${URL}
    maximize browser window

Verify the website
    wait until page contains element    ${AmazonLogo}