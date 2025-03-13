***Keywords***
Input data infomation on name
    [Arguments]                                      ${info_name}
    SeleniumLibrary.Wait Until Element Is Visible    ${fullname_info_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${fullname_info_locator}    ${user.fullname}

Input data infomation on surname
    [Arguments]                                      ${info_sername}
    SeleniumLibrary.Wait Until Element Is Visible    ${surname_info_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${surname_info_locator}    ${user.surname}

Input data infomation on address
    [Arguments]                                      ${info_address}
    SeleniumLibrary.Wait Until Element Is Visible    ${address_info_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${address_info_locator}    ${user.address}

Input data infomation on phone
    [Arguments]                                      ${info_phone}
    SeleniumLibrary.Wait Until Element Is Visible    ${phone_info_locator}    ${timeout}
    SeleniumLibrary.Input Text                       ${phone_info_locator}    ${user.phone} 

Input data infomation on email
    SeleniumLibrary.Wait Until Element Is Visible    ${email_info_locator}    ${timeout}
    ${email_value}                                   Get Value                ${email_info_locator}    
    BuiltIn.Should Not Be Empty                              ${email_value}

Go To Payment Method
    SeleniumLibrary.Click Element                    ${pay_button_locator} 