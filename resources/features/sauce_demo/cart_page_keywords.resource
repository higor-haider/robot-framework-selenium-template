*** Settings ***
Documentation       This file contains the keywords for the cart page

Resource            ../../common/global_keywords.resource
Resource            ../../common/global_resources.resource
Resource            ./cart_page_locators.resource


*** Keywords ***
Should Validate Cart Page Loaded
    [Documentation]    Validates the cart page is loaded
    Wait Until Element Is Visible    ${YOUR_CART_TEXT}

Should Validate Cart Has Product
    [Documentation]    Validates the cart has the product
    Wait Until Element Is Visible    ${PRODUCT_TEXT}
    ${product_name}    Get Text    ${PRODUCT_TEXT}
    Should Be Equal As Strings    ${product_name}    Sauce Labs Backpack

Should Click Remove Product Button
    [Documentation]    Clicks the remove product button
    Wait Until Element Is Visible    ${REMOVE_PRODUCT_BUTTON}
    Click Button    ${REMOVE_PRODUCT_BUTTON}

Then the user is taken to the cart page
    [Documentation]    Then the user is taken to the cart page
    Should Validate Cart Page Loaded

And the cart has the chosen product
    [Documentation]    And the cart has the chosen product
    Should Validate Cart Has Product

When the user removes all the products from the cart
    [Documentation]    When the user removes all the products from the cart
    Should Click Remove Product Button

Then the cart is empty
    [Documentation]    Then the cart is empty
    Wait Until Element Is Not Visible    ${PRODUCT_TEXT}
