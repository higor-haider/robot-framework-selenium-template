*** Settings ***
Documentation       This file contains the keywords for the products page

Resource            ../../common/global_keywords.resource
Resource            ../../common/global_resources.resource
Resource            ./products_page_locators.resource


*** Keywords ***
Should Validate Products Page Loaded
    [Documentation]    Validates the products page is loaded
    Wait Until Element Is Visible    ${PRODUCTS_TEXT}

Should Add Sauce Labs Backpack To Cart
    [Documentation]    Adds the Sauce Labs Backpack to the cart
    Wait Until Element Is Visible    ${SAUCE_LABS_BACKPACK_ADD_TO_CART_BUTTON}
    Click Element    ${SAUCE_LABS_BACKPACK_ADD_TO_CART_BUTTON}

Should Click Cart Button
    [Documentation]    Clicks the cart button
    Wait Until Element Is Visible    ${CART_BUTTON}
    Click Link    ${CART_BUTTON}

Then the user is taken to the products page
    [Documentation]    Then the user is taken to the products page
    Should Validate Products Page Loaded

When the user chooses a product and adds it to the cart
    [Documentation]    When the user chooses a product and adds it to the cart
    Should Add Sauce Labs Backpack To Cart

And the user clicks the cart button
    [Documentation]    And the user clicks the cart button
    Should Click Cart Button

And the cart has at least one product
    [Documentation]    And the cart has at least one product
    Should Validate Products Page Loaded
    Should Add Sauce Labs Backpack To Cart
    Should Click Cart Button
