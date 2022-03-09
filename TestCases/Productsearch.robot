*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot

Test Setup    Begin Web Test
Test Teardown   End Web Test
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${BROWSER} =    chrome
${URL} =  https://www.amazon.in/
${SEARCH_TEXT} =    Jockey underwear
${AmazonLogo}  css=a[class="nav-logo-link nav-progressive-attribute"]
${SCREENSHOT_PATH}= E:\developments\ProductSearch\Screenshots
@{All_WINDOWS_TITLES}=  Create List
@{All_WINDOWS_HANDLES}=  Create List
${Product_Link} =    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[10]/div/div/div/div/div[2]/div[2]/h2/a

*** Test Cases ***
User select online merchindize
    [Documentation]    This is for validation purpose only
    [Tags]    Smoke
    Given User select online merchandize
    Then User search for relevant product by filtered options
    Then User filtered the product search as per requirements


