*** Settings ***
Documentation       This file contains the keywords for the home page

Resource            ../../common/global_keywords.resource
Resource            ../../common/global_resources.resource
Resource            ./login_page_locators.resource


*** Variables ***
${username}     standard_user
${password}     secret_sauce


*** Keywords ***
Should Validate Login Page Loaded
    [Documentation]    Validates the login page is loaded
    Wait Until Element Is Visible    ${LOGIN_DIV}

Should Fill Username
    [Documentation]    Fills the username input
    Wait Until Element Is Visible    ${USERNAME_INPUT}
    Input Text    ${USERNAME_INPUT}    ${username}

Should Fill Password
    [Documentation]    Fills the password input
    Wait Until Element Is Visible    ${PASSWORD_INPUT}
    Input Text    ${PASSWORD_INPUT}    ${password}

Should Click Login Button
    [Documentation]    Clicks the login button
    Wait Until Element Is Visible    ${LOGIN_BUTTON}
    Click Element    ${LOGIN_BUTTON}

the login page is loaded
    [Documentation]    Given the login page is loaded
    Should Validate Login Page Loaded

the user fills in the username
    [Documentation]    When the user fills in the username
    Should Fill Username

the user fills in the password
    [Documentation]    And the user fills in the password
    Should Fill Password

the user clicks the login button
    [Documentation]    And the user clicks the login button
    Should Click Login Button

the user is logged in
    [Documentation]    Given the user is logged in
    Should Validate Login Page Loaded
    Should Fill Username
    Should Fill Password
    Should Click Login Button
