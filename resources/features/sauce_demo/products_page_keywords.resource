*** Settings ***
Documentation       This file contains the keywords for the products page

Resource            ../../common/global_keywords.resource
Resource            ../../common/global_resources.resource
Resource            ./products_page_locators.resource


*** Keywords ***
Should Validate Products Page Loaded
    [Documentation]    Validates the products page is loaded
    Wait Until Element Is Visible    ${PRODUCTS_TEXT}

Then the user is taken to the products page
    [Documentation]    Then the user is taken to the products page
    Should Validate Products Page Loaded
