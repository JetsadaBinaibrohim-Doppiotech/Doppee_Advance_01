***Keywords***
Verify searching product and add to cart successfully
    [Arguments]                                                    ${product_name}
    search_page.Input product name on search bar                   ${product_name}
    search_page.Click search icon
    search_page.Select product by click on product card
    search_page.Click Add to cart button on product card
    search_page.Display Pop-Up contain Add product successfully
    search_page.Click OK on Product detail page Pop-up

Verify search product match with API data
    [Arguments]      ${product_name} 
    ${check_NAME}    ${check_ID}          ${check_QTY}    ${check_DISCOUNT}=    search_api.Verify Search API can assets data correct    
    ...              ${product_name}      
    ...              ${login.username}    
    ...              ${login.password}

    Should Be Equal As Strings    ${check_NAME}    ${product_name}
    Should Be Equal As Numbers    ${check_ID}      ${tc02.product_id}
    Log to console                product NAME : ${check_NAME} is equl ${product_name}
    Log to console                product ID : ${check_ID} is equl ${tc02.product_id}

    IF                ${check_QTY} >0
    Should Be True    ${check_QTY}
    Log to console    ${check_QTY} qty of product
    END

    Should Be True    ${check_DISCOUNT}
    Log to console    ${check_DISCOUNT} discount



