***Settings***
Resource            ../import.robot

***Test Cases***
TC01
    [Tags]      tc01
    commom_keyword.Open Doppee Website
    register_feature.Verify registration account with random data generation successfully
    search_feature.Verify searching product and add to cart successfully  ${tc01.product_name}
    delivery_feature.Verify filled user delivery infomation successfully
    payment_feature.Verify information payment data and confirm payment successfully
    check_feature.Verify order create in user account page at My Order 

TC02
    [Tags]      tc02
    commom_keyword.Open Doppee Website
    login_feature.Verify login account with exist data
    search_feature.Verify searching product and add to cart successfully  ${tc02.product_name}
    search_feature.Verify search product match with API data  ${tc02.product_name}

TC03
    [Tags]      tc03
    commom_keyword.Open Doppee Website
    commom_keyword.Connect to database and fetch data
    register_feature.Verify register create data exist in database
