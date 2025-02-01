*** Settings ***
Documentation       This file contains sauce demo test cases

Resource            ../resources/features/sauce_demo/cart_page_keywords.resource
Resource            ../resources/features/sauce_demo/login_page_keywords.resource
Resource            ../resources/features/sauce_demo/products_page_keywords.resource

Test Setup          Open Browser And Navigate To The Testing URL    ${SAUCE_DEMO_URL}


*** Test Cases ***
Login And Validate Products Page
    [Documentation]    This test case logs in and validates that the user is taken to the products page
    [Tags]    sauce-demo
    Given the login page is loaded
    When the user fills in the username
    And the user fills in the password
    And the user clicks the login button
    Then the user is taken to the products page

Add A Product To The Cart And Validate That Product Is In The Cart
    [Documentation]    This test case adds a product to the cart and validates that the product is in the cart
    [Tags]    sauce-demo
    Given the user is logged in
    When the user chooses a product and adds it to the cart
    And the user clicks the cart button
    Then the user is taken to the cart page
    And the cart has the chosen product

Remove A Product From The Cart And Validate That Product Is Not In The Cart
    [Documentation]    This test case removes a product from the cart and validates that the product is not in the cart
    [Tags]    sauce-demo
    Given the user is logged in
    And the cart has at least one product
    When the user removes all the products from the cart
    Then the cart is empty
