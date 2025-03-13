***Keywords***
Check order created in My Order
    SeleniumLibrary.Wait Until Element Is Visible    ${myorder_box_locator}     ${timeout}
    ${orderID}=                                      Get Text                   ${myorder_id_locator}
    ${setID}=                                        Set Variable               ${orderID}
    Log To Console                                   ID : ${setID}
    BuiltIn.Should Not Be Empty                      ${setID}
    BuiltIn.Should Not Be Empty                      ${myorder_sta_locator}