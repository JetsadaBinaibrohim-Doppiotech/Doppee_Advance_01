***Keywords***
Select payment method as credit card
    SeleniumLibrary.Click Element    ${pay_method_locator}
    SeleniumLibrary.Click Element    ${next_button_locator} 

Input valid data on Card Number box
    [Arguments]                                      ${payment.number}
    SeleniumLibrary.Wait Until Element Is Visible    ${card_number_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${card_number_locator}    ${payment.number}

Input valid data on Expration date box
    [Arguments]                                      ${payment.exp}
    SeleniumLibrary.Wait Until Element Is Visible    ${exp_date_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${exp_date_locator}    ${payment.exp}

Input valid data on Cv code box
    [Arguments]                                      ${payment.cvc}
    SeleniumLibrary.Wait Until Element Is Visible    ${cvc_code_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${cvc_code_locator}    ${payment.cvc}

Input valid data on Card Owner Name box
    [Arguments]                                      ${payment.cardname}
    SeleniumLibrary.Wait Until Element Is Visible    ${card_owner_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${card_owner_locator}    ${payment.cardname}

Click button Confirm Payment
    SeleniumLibrary.Click Element                    ${confirm_button_locator}    
    SeleniumLibrary.Wait Until Element Is Visible    ${popup_payment__locator}    ${timeout}
    SeleniumLibrary.Element Should Contain           ${popup_text_locator}        Payment successfully

Pop-up Confirm Payment Success
    SeleniumLibrary.Click Element                    ${popup_button__locator}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_details__locator}    ${timeout}    

Order Information Created
    ${payment_data}=          Get Text       ${payment_details__locator}
    BuiltIn.Should Not Be Empty   ${payment_data}

Click Continue Shopping
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_button_locator}    ${timeout}
    SeleniumLibrary.Click Element                    ${payment_button_locator}