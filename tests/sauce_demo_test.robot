*** Settings ***
Documentation       This file contains sauce demo test cases

Resource            ../resources/features/sauce_demo/login_page_keywords.resource
Resource            ../resources/features/sauce_demo/products_page_keywords.resource

Test Setup          Open Browser And Navigate To Testing The URL    ${SAUCE_DEMO_URL}


*** Test Cases ***
Login And Validate Products Page
    [Documentation]    This test case logs in and validates that the user is taken to the products page
    [Tags]    sauce-demo
    Given the login page is loaded
    When the user fills in the username
    And the user fills in the password
    And the user clicks the login button
    Then the user is taken to the products page
