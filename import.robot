***Settings***
#Library Include
Library    SeleniumLibrary
Library    RequestsLibrary
Library    DatabaseLibrary
Library    String
Library    Collections
Library    BuiltIn
Library    re

#API connection
Resource    ./Keywords/API/login_api.robot
Resource    ./Keywords/API/search_api.robot

#Variables Data
Variables    ./Resource/Testdata/testdata.yaml

#Common Files
Resource    ./Keywords/commom_keyword.robot

#Common Locator
Resource    ./Resource/Locator/header_locator.robot

#Resource Header Data Files
Resource    ./Keywords/header_menu.robot

#Resource Login Data Files
Resource    ./Keywords/Feature/login_feature.robot
Resource    ./Keywords/Page/login_page.robot
Resource    ./Resource/Locator/login_locator.robot

#Resource Register Data Files
Resource    ./Keywords/Feature/register_feature.robot
Resource    ./Keywords/Page/register_page.robot
Resource    ./Resource/Locator/register_locator.robot

#Resource Search Data Files
Resource    ./Keywords/Feature/search_feature.robot
Resource    ./Keywords/Page/search_page.robot
Resource    ./Resource/Locator/search_locator.robot

#Resource Delivery Data Files
Resource    ./Keywords/Feature/delivery_feature.robot
Resource    ./Keywords/Page/delivery_page.robot
Resource    ./Resource/Locator/delivery_locator.robot

#Resource Payment Data Files
Resource    ./Keywords/Feature/payment_feature.robot
Resource    ./Keywords/Page/payment_page.robot
Resource    ./Resource/Locator/payment_locator.robot


#Resource Check Order Data Files
Resource    ./Keywords/Feature/check_feature.robot
Resource    ./Keywords/Page/check_page.robot
Resource    ./Resource/Locator/check_locator.robot