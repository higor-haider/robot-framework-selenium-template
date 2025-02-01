*** Settings ***
Documentation       This file contains test automation practice test cases

Resource            ../resources/features/test_automation_practice/home_page_keywords.resource

Test Setup          Open Browser And Navigate To The Testing URL    ${TEST_AUTOMATION_PRACTICE_URL}


*** Test Cases ***
Fill And Validate Form
    [Documentation]    This test case fills the form and validates that it is filled correctly
    [Tags]    test-auto-practice
    Given the user has the home page loaded
    When the user fills the GUI elements form
    Then the user can validate the form is filled correctly
