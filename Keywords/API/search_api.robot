***Keywords***
Verify Search API can assets data correct
    [Arguments]    ${product_name}    ${login_username}    ${login_password}

    ${user_TOKEN}=       login_api.Verify Login API can assets data correct    ${login_username}                           ${login_password}
    Create Session       SearchProduct                                         ${browser.url}
    ${URL_Search}=       Set Variable                                          /api/product/search?text=${product_name}
    ${token_headers}=    Create Dictionary                                     token=${user_TOKEN}
    ${get_resp}=         GET On Session                                        
    ...                  SearchProduct
    ...                  ${URL_Search}
    ...                  headers=${token_headers}
    ...                  expected_status=200

    ${product_PARENT}=    Set Variable      ${get_resp.json()['product']}
    ${count_PRODUCT}=     Get Length        ${product_PARENT}
    ${morethanone}=       Evaluate          ${count_PRODUCT} > 0
    Should Be True        ${morethanone}

    ${product_CHILD}=         Get From List          ${product_PARENT}    0                
    ${product_CROSSPRICE}=    Get From Dictionary    ${product_CHILD}     crossOutPrice
    ${product_ID}=            Get From Dictionary    ${product_CHILD}     id
    ${product_DISCOUNT}=      Get From Dictionary    ${product_CHILD}     discount
    ${product_NAME}=          Get From Dictionary    ${product_CHILD}     name
    ${product_PRICE}=         Get From Dictionary    ${product_CHILD}     price
    ${product_QTY}=           Get From Dictionary    ${product_CHILD}     qty

    ${check_NAME}=        Set Variable    ${product_NAME}
    ${check_ID}=          Set Variable    ${product_ID}
    ${check_QTY}=         Set Variable    ${product_QTY}
    ${check_DISCOUNT}=    Set Variable    ${product_DISCOUNT}

    Log to console    ${product_CHILD}
    Log to console    ${product_CROSSPRICE}
    Log to console    ${product_ID}
    Log to console    ${product_DISCOUNT}
    Log to console    ${product_NAME}
    Log to console    ${product_PRICE}

    RETURN    ${check_NAME}    ${check_ID}    ${check_QTY}    ${check_DISCOUNT}