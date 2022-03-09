*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***

User selected the product

    click element    ${Product_Link}
    switch window
    wait until page contains    Back to results