*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    # Maximize Browser Window

End Web Test
    Close Browser

Getting all widnows titles
    @{All_WINDOWS_TITLES}=  get window titles




Getting all windows handles
    @{All_WINDOWS_HANDLES}=    get window handles
