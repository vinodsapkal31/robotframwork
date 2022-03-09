*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/search.robot
Resource    ../Resources/PO/selectproduct.robot
Resource    ../Resources/PO/filteredthesearch.robot


*** Keywords ***
User select online merchandize
    LandingPage.User Enter the website
    LandingPage.Verify the website

User search for relevant product by filtered options
    search.User enter product name in search bar
    search.User enter the click button
    #sleep    20sec

User filtered the product search as per requirements
    sleep    5sec
    filteredthesearch.Select top brands only
    sleep    2sec
    filteredthesearch.Select price range
    sleep    2sec
    filteredthesearch.Select customer review

User selected the product

    selectproduct.User selected the product

