*** Settings ***
Documentation       This file contains test automation practice test cases

Resource            ../resources/features/test_automation_practice/home_page_keywords.resource

Suite Setup         Open Browser And Navigate To Testing The URL    ${TEST_AUTOMATION_PRACTICE_URL}


*** Test Cases ***
Fill Form
    [Documentation]    This test case fills the form
    Should Fill Name
    Should Fill Email
    Should Fill Phone
    Should Should Select Gender
    Should Select Days
    Should Select Country
    Should Select Colors
    Should Select Animals
    Should Fill Date Picker 1
    Should Fill Date Picker 2
    Should Fill Date Picker 3
    Should Click Submit Button
    Should Validate Days Between Range
    Should Upload File
