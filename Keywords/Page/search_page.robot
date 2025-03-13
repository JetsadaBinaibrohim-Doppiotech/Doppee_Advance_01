***Keywords***
Input product name on search bar
    [Arguments]                                      ${product_name}
    SeleniumLibrary.Wait Until Element Is Visible    ${place_holder_locator}     ${timeout}
    SeleniumLibrary.Input Text                       ${input_product_locator}    ${product_name}

Click search icon
    SeleniumLibrary.Click Element                    ${search_icon_locator} 
    SeleniumLibrary.Wait Until Element Is Visible    ${product_card_locator}    ${timeout}

Select product by click on product card
    SeleniumLibrary.Click Element                    ${product_card_locator}
    SeleniumLibrary.Wait Until Element Is Visible    ${product_button_locator}    ${timeout}    

Click Add to cart button on product card
    SeleniumLibrary.Click Element    ${product_button_locator} 

Display Pop-Up contain Add product successfully
    SeleniumLibrary.Wait Until Element Is Visible    ${popup_display_locator}    ${timeout}
    SeleniumLibrary.Element Should Contain           ${popup_text_locator}       Add product successfully

Click OK on Product detail page Pop-up
    SeleniumLibrary.Click Element    ${popup_ok_locator}    