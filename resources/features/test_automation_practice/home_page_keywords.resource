*** Settings ***
Documentation       This file contains the keywords for the home page

Resource            ../../common/global_keywords.resource
Resource            ../../common/global_resources.resource
Resource            ./home_page_locators.resource


*** Keywords ***
Should Validate Page Loaded
    [Documentation]    Validates the page is loaded
    ${name}    Name
    Wait Until Element Is Visible    ${TITLE_TEXT}

Should Fill Name
    [Documentation]    Fills the name input
    ${name}    Name
    Wait Until Element Is Visible    ${NAME_INPUT}
    Input Text    ${NAME_INPUT}    ${name}

Should Fill Email
    [Documentation]    Fills the email input
    ${email}    Email
    Wait Until Element Is Visible    ${EMAIL_INPUT}
    Input Text    ${EMAIL_INPUT}    ${email}

Should Fill Phone
    [Documentation]    Fills the phone input
    ${phone}    Phone Number
    Wait Until Element Is Visible    ${PHONE_INPUT}
    Input Text    ${PHONE_INPUT}    ${phone}

Should Should Select Gender
    [Documentation]    Selects the gender radio button
    Select Radio Button    gender    female

Should Select Days
    [Documentation]    Selects the friday, saturday and sunday checkboxes
    Wait Until Element Is Visible    ${FRIDAY_CHECKBOX}
    Select Checkbox    ${FRIDAY_CHECKBOX}
    Wait Until Element Is Visible    ${SATURDAY_CHECKBOX}
    Select Checkbox    ${SATURDAY_CHECKBOX}
    Wait Until Element Is Visible    ${SUNDAY_CHECKBOX}
    Select Checkbox    ${SUNDAY_CHECKBOX}

Should Select Country
    [Documentation]    Selects the country on the dropdown
    Wait Until Element Is Visible    ${COUNTRY_DROPDOWN}
    Click Element    ${COUNTRY_DROPDOWN}
    Wait Until Element Is Visible    ${BRAZIL_COUNTRY_TEXT}
    Click Element    ${BRAZIL_COUNTRY_TEXT}
    Press Keys    None    TAB

Should Select Colors
    [Documentation]    Selects the blue and white colors on the list
    Select From List By Value    ${COLORS_LIST}    white    blue

Should Select Animals
    [Documentation]    Selects the blue and white colors on the list
    Select From List By Value    ${ANIMALS_LIST}    cat    cheetah

Should Fill Date Picker 1
    [Documentation]    Fills the date picker 1
    Wait Until Element Is Visible    ${DATE_PICKER_1_INPUT}
    Input Text    ${DATE_PICKER_1_INPUT}    16/08/1989
    Press Keys    None    TAB

Should Fill Date Picker 2
    [Documentation]    Fills the date picker 2
    Wait Until Element Is Visible    ${DATE_PICKER_2_INPUT}
    Click Element    ${DATE_PICKER_2_INPUT}
    Select From List By Value    ${DATE_PICKER_2_MONTH_LIST}    7
    Select From List By Value    ${DATE_PICKER_2_YEAR_LIST}    2015
    Click Element    ${DATE_PICKER_2_FIRST_DAY}

Should Fill Date Picker 3
    [Documentation]    Fills the date picker 3
    Wait Until Element Is Visible    ${DATE_PICKER_3_START_DATE_INPUT}
    Input Text    ${DATE_PICKER_3_START_DATE_INPUT}    16/08/1989
    Wait Until Element Is Visible    ${DATE_PICKER_3_END_DATE_INPUT}
    Input Text    ${DATE_PICKER_3_END_DATE_INPUT}    31/01/2025

Should Click Submit Button
    [Documentation]    Clicks the submit button
    Click Element    ${SUBMIT_BUTTON}

Should Validate Days Between Range
    [Documentation]    Validates the days between the start and end date
    ${days}    Get Text    ${DAYS_BETWEEN_RANGE_TEXT}
    ${int_days}    Evaluate    int(re.search(r'\\d+', '''${days}''').group())    modules=re
    Should Be Equal As Numbers    ${int_days}    12952

Should Upload File
    [Documentation]    Uploads a file
    Wait Until Element Is Visible    ${UPLOAD_FILE_INPUT}
    Choose File    ${UPLOAD_FILE_INPUT}    ${EXECDIR}/resources/files/google.pdf
    Click Element    ${UPLOAD_SINGLE_FILE_BUTTON}

Should Validate Uploaded File Successfully
    [Documentation]    Validates the file was uploaded successfully
    ${status}    Get Text    ${SINGLE_FILE_STATUS_TEXT}
    Should Contain    ${status}    Single file selected: google.pdf

Given the user has the home page loaded
    [Documentation]    Given the user has the home page loaded
    Should Validate Page Loaded

When the user fills the GUI elements form
    [Documentation]    When the user fills the gui elements form
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
    Should Upload File

Then the user can validate the form is filled correctly
    [Documentation]    Then the user can validate the form is filled correctly
    Should Validate Days Between Range
    Should Validate Uploaded File Successfully
