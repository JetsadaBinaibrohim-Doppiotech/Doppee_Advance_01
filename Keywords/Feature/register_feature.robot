***Keywords***
Click Sign-Up button to Registration page
    SeleniumLibrary.Wait Until Element Is Visible    ${signup_button_locator}    ${timeout}
    SeleniumLibrary.Click Element                    ${signup_button_locator}

Verify registration account with random data generation successfully
    header_menu.Click on header user icon
    register_feature.Click Sign-Up button to Registration page
    register_page.Input username on Email address box                 
    register_page.Input password on Password box
    register_page.Input same password on Confirm password box
    register_page.Click Sign-up Button on Registration form
    register_page.Display Pop-Up contain Registration successfully
    register_page.Click OK on Register page Pop-up

Verify register create data exist in database
    header_menu.Click on header user icon
    register_feature.Click Sign-Up button to Registration page
    ${get_email}=                                                     register_page.Input username on Email address box    
    register_page.Input password on Password box
    register_page.Input same password on Confirm password box
    register_page.Click Sign-up Button on Registration form
    register_page.Display Pop-Up contain Registration successfully
    register_page.Click OK on Register page Pop-up

    ${query}                      Set Variable                    SELECT email FROM users WHERE LOWER(email) = LOWER('${get_email}')
    ${result}=                    Query                           ${query}
    Should Not Be Empty           ${result}                       "No email exist"
    ${email}=                     Set Variable                    ${result[0][0]}
    Should Be Equal As Strings    ${email}                        ${get_email}
    Log to console                Database ${email} is existed




