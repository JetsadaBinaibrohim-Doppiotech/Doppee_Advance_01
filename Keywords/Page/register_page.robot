***Keywords***
Generate random number for different username
    [Arguments]         ${register.username}         ${register.domain}
    ${random_number}    Generate random number
    ${email}=           Set Variable                 ${register.username}${random_number}${register.domain}
    RETURN              ${email}

Input username on Email address box
    ${email}=                                        Generate random number for different username    ${register.username}    ${register.domain}
    SeleniumLibrary.Wait Until Element Is Visible    ${input_username_locator}                        ${timeout}
    SeleniumLibrary.Input Text                       ${input_username_locator}                        ${email}
    Log To Console  ${email}
    RETURN          ${email}

Input password on Password box
    SeleniumLibrary.Wait Until Element Is Visible    ${input_password_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${input_password_locator}    ${register.password}

Input same password on Confirm password box
    SeleniumLibrary.Wait Until Element Is Visible    ${input_confirm_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${input_confirm_locator}    ${register.password}

Click Sign-up Button on Registration form
    SeleniumLibrary.Wait Until Element Is Visible    ${submit_button_locator}    ${timeout}
    SeleniumLibrary.Click Element                    ${submit_button_locator}    

Display Pop-Up contain Registration successfully
    SeleniumLibrary.Wait Until Element Is Visible    ${popup_display_locator}    ${timeout}
    SeleniumLibrary.Element Should Contain           ${popup_text_locator}       Register successfully

Click OK on Register page Pop-up
    SeleniumLibrary.Wait Until Element Is Visible    ${popup_button_locator}    ${timeout}
    SeleniumLibrary.Click Element                    ${popup_button_locator}    