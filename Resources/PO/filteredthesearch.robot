*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{Min_Max_price}=  250   1000
@{Min_Max_price_inputLink}=     xpath://input[@id="low-price"]    xpath://input[@id="high-price"]   xpath://*[@id="a-autoid-1"]/span/input
${customer-review}=     xpath://span[text()="4 Stars & Up"]//ancestor::i[1]
${top_brands}=         xpath=   //li[@aria-label="Top Brands"]/span/a/div/label/i


*** Keywords ***

Select customer review
    click element                   ${customer-review}
    #checkbox should be selected     ${customer-review}

Select price range
    input text                      ${Min_Max_price_inputLink}[0]   ${Min_Max_price}[0]
    textfield value should be       ${Min_Max_price_inputLink}[0]   ${Min_Max_price}[0]

    input text                      ${Min_Max_price_inputLink}[1]   ${Min_Max_price}[1]
    textfield value should be       ${Min_Max_price_inputLink}[1]   ${Min_Max_price}[1]

    click button                    ${Min_Max_price_inputLink}[2]

Select top brands only
    click element             ${top_brands}
    #checkbox should be selected    ${top_brands}