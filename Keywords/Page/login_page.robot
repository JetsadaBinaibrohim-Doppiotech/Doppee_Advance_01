***Keywords***
Input username on Username box
    [Arguments]                                      ${login.username}
    SeleniumLibrary.Wait Until Element Is Visible    ${input_login_user_locator}
    SeleniumLibrary.Input Text                       ${input_login_user_locator}    ${login.username}
    RETURN          ${login.username}

Input password on Password box
    [Arguments]                                      ${login.password}
    SeleniumLibrary.Wait Until Element Is Visible    ${input_login_pass_locator}
    SeleniumLibrary.Input Text                       ${input_login_pass_locator}    ${login.password}
    RETURN          ${login.password}

Click Login Button on login form
    SeleniumLibrary.Wait Until Element Is Visible    ${input_login_button_locator}    ${timeout}
    SeleniumLibrary.Click Element                    ${input_login_button_locator}    

Display Pop-Up contain Login successfully
    SeleniumLibrary.Wait Until Element Is Visible    ${popup_login_suscessfully}    ${timeout}
    SeleniumLibrary.Element Should Contain           ${popup_login_suscessfully}    Login successfully

Click OK on Login page Pop-up
    SeleniumLibrary.Wait Until Element Is Visible    ${popup_login_ok}    ${timeout}
    SeleniumLibrary.Click Element                    ${popup_login_ok}    