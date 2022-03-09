x*** Settings ***
Library SeleniumLibrary
Res

*** Variables ***
${product_link}=    div[data-component-id="90"] span:nth-child(1)

*** Keywords ***
Selected the product from website
    click element   ${product_link}
    capture page screenshot    ${SCREENSHOT_PATH}/product.png

Get all tab titles and handles





